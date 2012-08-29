module TranslationHelpers
  def translates(*attributes)
    attributes.each do |attribute|
      class_eval do
        define_method("#{attribute}") do
          read_attribute("#{attribute}_#{I18n.locale}")
        end

        define_method("#{attribute}=") do |value|
          write_attribute("#{attribute}_#{I18n.locale}", value)
        end
      end

      define_singleton_method("find_by_#{attribute}") do |value|
        send("find_by_#{attribute}_#{I18n.locale}", value)
      end
    end
  end
end

ActiveRecord::Base.send(:extend, TranslationHelpers)
