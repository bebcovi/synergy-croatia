# encoding: utf-8

class SupportController < ApplicationController
  manages :volunteers

  # Actions

  def donate
  end

  def volunteer
    @volunteer = Volunteer.new
  end

  def create
    volunteers_manager.create(params[:volunteer])
  end

  # Callbacks

  def create_succeeded(volunteer)
    redirect_to root_path, notice: "Vaša prijava je poslana, uskoro ćemo vam se javiti. Hvala."
  end

  def create_failed(volunteer)
    @volunteer = volunteer
    render :volunteer
  end
end
