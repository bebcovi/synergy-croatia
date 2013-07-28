class VolunteeringMailer < ActionMailer::Base
  default from: "Synergy Croatia #{ENV["SENDGRID_USERNAME"]}"

  def volunteer(attributes)
    @volunteer = attributes
    attachments["volonter.pdf"] = VolunteerPdf.new(@volunteer).render
    mail(to: ENV["VOLUNTEER_EMAIL"], subject: "Prijava za volontiranje")
  end
end
