# encoding: utf-8

class SessionsController < ApplicationController
  manages :sessions

  # Actions

  def new
  end

  def create
    sessions_manager.create(params[:user], session)
  end

  def destroy
    sessions_manager.destroy(session)
  end

  # Callbacks

  def create_succeeded
    redirect_to admin_root_path
  end

  def create_failed
    flash.now[:alert] = "Pogrešno korisničko ime ili lozinka."
    render :new
  end

  def destroy_succeeded
    redirect_to :back
  end
end
