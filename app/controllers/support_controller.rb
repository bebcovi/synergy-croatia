class SupportController < ApplicationController
  def donate
  end

  def volunteer
    @volunteer = Volunteer.new
  end

  def create_volunteer
    @volunteer = Volunteer.new
    @volunteer.assign_attributes(volunteer_params)

    if @volunteer.valid?
      VolunteeringMailer.volunteer(@volunteer)
      redirect_to root_path, notice: "Vaša prijava je poslana, uskoro ćemo vam se javiti. Hvala."
    else
      render :volunteer
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit!
  end
end
