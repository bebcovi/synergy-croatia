module TrainingsHelper
  def common_countries
    Training.pluck(:participating_countries).compact.inject(:+).uniq.
      map { |code| [t("countries.#{code}"), code] }.sort
  end

  def countries(country_codes)
    country_codes.map { |code| t "countries.#{code}" }.to_sentence
  end
end
