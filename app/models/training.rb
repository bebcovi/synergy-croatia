class Training < ActiveRecord::Base
  serialize :participating_countries, Array

  def duration
    (ends_on - begins_on + 1).to_i
  end

  def participating_countries=(countries)
    countries = (countries.is_a?(Array) ? countries : countries.split(/,\s?/))
    write_attribute(:participating_countries, countries)
  end
end
