# encoding: utf-8

class TrainingsController < ApplicationController
  manages :trainings
  before_filter :authorize!

  # Actions

  def new
    @training = Training.new
  end

  def create
    training_manager.create(params[:training])
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    training_manager.update(params[:id], params[:training])
  end

  def show
    @training = Training.find(params[:id])
  end

  def destroy
    training_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(training)
    redirect_to training
  end

  def create_failed(training)
    @training = training
    render :new
  end

  def update_succeeded(training)
    redirect_to training
  end

  def update_failed(training)
    @training = training
    render :edit
  end

  def destroy_succeeded(training)
    redirect_to news_path, notice: "Trening je uspješno izbrisan."
  end
end
