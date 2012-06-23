module TrainingsHelper
  def common_countries
    %w[HU NL CZ].map { |code| [t("countries.#{code}"), code] }
  end

  def display_countries(country_codes)
    enumerate(country_codes[0..-2].map { |code| t "countries.#{code}" })
  end
end
