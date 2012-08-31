# encoding: utf-8

class SupportController < ApplicationController
  def donate
  end

  def volunteer
    @volunteer = Volunteer.new
  end

  def apply
    @volunteer = Volunteer.new(params[:volunteer])

    if @volunteer.valid?
      VolunteeringMailer.volunteer(@volunteer).deliver
      redirect_to root_path, notice: "Vaša prijava je poslana, uskoro ćemo vam se javiti. Hvala."
    else
      render :volunteer
    end
  end
end
