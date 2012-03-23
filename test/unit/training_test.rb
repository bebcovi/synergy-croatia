require 'test_helper'

class TrainingTest < ActiveSupport::TestCase
  test "attributes" do
    model_attributes = Training.attribute_names.map(&:to_sym)
    [:title, :level, :description, :goal, :begins_on, :ends_on,
     :participating_countries, :age_restriction, :location,
     :infoletter_url, :participation_form_url, :additional_info,
     :created_at, :updated_at, :id].each do |attribute|
       assert_includes(model_attributes, attribute)
     end
  end

  test "methods" do
    require 'date'
    assert_equal 10, Training.new(:begins_on => Date.parse("1st Jan 2012"),
                                  :ends_on => Date.parse("10th Jan 2012")).duration
  end

  test "column translations" do
    Training.attribute_names.map(&:to_sym).each do |attribute|
      assert_nothing_raised(I18n::MissingTranslationData) do
        I18n.t "activerecord.attributes.training.#{attribute}", :raise => true
      end
    end
  end
end
