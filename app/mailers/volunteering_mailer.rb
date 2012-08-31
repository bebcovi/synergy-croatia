class VolunteeringMailer < ActionMailer::Base
  default from: "janko.marohnic@gmail.com", to: "janko.marohnic@gmail.com"

  def volunteer(attributes)
    @volunteer = attributes
    attachments["volonter.pdf"] = VolunteerPdf.new(@volunteer).render
    mail(subject: "Prijava za volontiranje")
  end
end
