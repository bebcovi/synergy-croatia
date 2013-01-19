module TranslationHelpers
  def translates(*columns)
    translation_methods = <<-RUBY
      def method_missing(name, *args, &block)
        translation_regexp = /(\#{#{columns}.join("|")})(?!_(en|hr))/
        if name.to_s =~ translation_regexp
          method_name = name.to_s.sub(translation_regexp, '\\1' + "_\#{I18n.locale}")
          send(method_name, *args, &block)
        else
          super
        end
      end
    RUBY

    class_eval <<-RUBY, __FILE__, __LINE__ + 1
      #{translation_methods}

      class << self
        #{translation_methods}
      end
    RUBY
  end
end

ActiveRecord::Base.send(:extend, TranslationHelpers)
