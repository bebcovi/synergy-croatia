module TrainingsHelper
  def common_countries
    Training.pluck(:participating_countries).compact.inject(:+).uniq.
      map { |code| [t("countries.#{code}"), code] }.sort
  end

  def display_countries(country_codes)
    enumerate(country_codes.map { |code| t "countries.#{code}" })
  end
end
