class VolunteerPdf < Prawn::Document
  def initialize(volunteer)
    super()
    @volunteer = volunteer
    font "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf", size: 10
    table rows do
      self.row_colors = ["DDDDDD", "FFFFFF"]
    end
  end

  def rows
    [
      [t(:name), @volunteer.name],
      [t(:profession), @volunteer.profession],
      [t(:age), @volunteer.age],
      [t(:email), @volunteer.email],
      [t(:phone), @volunteer.phone],
      ["U Syncro Synergy Croatia zanima me", @volunteer.interests.reject(&:empty?).map { |str| "- #{str}" }.join("\n")],
      ["Želim volontirati zbog", @volunteer.reason]
    ]
  end

  def t(key)
    I18n.t("simple_form.labels.volunteer.#{key}", locale: :hr)
  end
end
