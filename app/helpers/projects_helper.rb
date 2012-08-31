module ProjectsHelper
  def common_countries
    country_codes = Project.pluck(:participating_countries).compact.inject(:+).uniq
    country_codes.map { |code| [t("countries.#{code}"), code] }.sort
  rescue
    nil
  end

  def countries(country_codes)
    country_codes.map { |code| t "countries.#{code}" }.to_sentence
  end
end
