module TrainingsHelper
  def common_countries
    Training.pluck(:participating_countries).inject(:+).uniq.sort.
      map { |code| [t("countries.#{code}"), code] }
  end

  def display_countries(country_codes)
    enumerate(country_codes.map { |code| t "countries.#{code}" })
  end
end
