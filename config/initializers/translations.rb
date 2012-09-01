module ActiveRecord
  class Base
    def self.translates(attribute)
      define_method("#{attribute}") do
        read_attribute("#{attribute}_#{I18n.locale}")
      end

      define_method("#{attribute}=") do |value|
        write_attribute("#{attribute}_#{I18n.locale}", value)
      end

      define_singleton_method("find_by_#{attribute}") do |value|
        send("find_by_#{attribute}_#{I18n.locale}", value)
      end
    end
  end
end

module I18n
  class << self
    alias normal_translate translate
    def translate(*args)
      key = args.shift.to_s
      normal_translate(key.sub(/_(en|hr)$/, "").to_sym, *args)
    end
  end
end
