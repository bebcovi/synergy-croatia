require "draper"
require "squeel"

class Draper::Decorator
  def self.translates(*attributes)
    include Module.new {
      attributes.each do |attribute|
        class_eval <<-RUBY, __FILE__, __LINE__+1
          def #{attribute}(*args)
            object.send("#{attribute}_\#{I18n.locale}", *args)
          end
        RUBY
      end
    }
  end
end

module ActiveRecord
  class Base
    def self.required_locale_columns(*args)
      options = args.last.is_a?(Hash) ? args.pop : {}
      @_required_locale_columns = args

      scope :available_in, ->(locale) do
        columns = _required_locale_columns(locale)
        where{sift :present, columns}
      end

      class_eval <<-RUBY, __FILE__, __LINE__+1
        def available_in?(locale)
          values = self.class._required_locale_columns(locale)
            .map { |column| send(column) }

          values.all?(&:present?)
        end

        def self._required_locale_columns(locale)
          @_required_locale_columns
            .map { |column| "\#{column}_\#{locale}" }
        end
      RUBY

      if @_required_locale_columns.count > 1 and options[:validations] != false
        validates_presence_chain *(@_required_locale_columns.map { |column| "#{column}_en" })
        validates_presence_chain *(@_required_locale_columns.map { |column| "#{column}_hr" })
      end
    end

    sifter :present do |columns|
      columns
        .map { |column| __send__(column) != "" }
        .inject(:&)
    end

    def self.validates_presence_chain(*columns)
      method_name = :"#{columns.join("_or_")}?"

      columns.each do |column|
        validates_presence_of column, if: method_name
      end

      class_eval <<-RUBY, __FILE__, __LINE__+1
        def #{method_name}
          values = [#{columns.map(&:inspect).join(", ")}]
            .map { |column| send(column) }

          values.any?(&:present?)
        end
      RUBY
    end
  end
end
