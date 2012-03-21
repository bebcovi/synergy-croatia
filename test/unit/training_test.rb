require 'test_helper'

class TrainingTest < ActiveSupport::TestCase
  test "attributes" do
    model_attributes = Training.attribute_names.map(&:to_sym)
    assert [:title, :level, :description, :goal, :beings_on, :ends_on,
            :participating_countries, :age_restriction, :location,
            :infoletter_url, :participation_form_url, :additional_info,
            :created_at, :updated_at, :id].all? do |attribute|
              attribute.in?(model_attributes)
            end
  end
end
