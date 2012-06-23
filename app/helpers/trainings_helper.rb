module TrainingsHelper

  def display_countries(country_codes)
    enumerate(country_codes[0..-2].map { |code| t "countries.#{code}" })
  end
end
