require 'test_helper'

class TrainingTest < ActiveSupport::TestCase
  test "methods" do
    require 'date'
    training = Training.new(:begins_on => Date.parse("1st Jan 2012"),
                            :ends_on   => Date.parse("9th Jan 2012"))
    assert_equal 9, training.duration
  end

  test "column translations" do
    Training.attribute_names.map(&:to_sym).except(:id).each do |attr|
      assert_nothing_raised(I18n::MissingTranslationData) do
        I18n.t "activerecord.attributes.training.#{attr}", :raise => true
      end
    end
  end
end
