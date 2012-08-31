class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
    @countries = Country.all
  end

  def create
    @training = Training.new(params[:training])

    if @training.save
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def edit
    @training = Training.find(params[:id])
    @countries = Country.all
    render :new
  end

  def update
    @training = Training.find(params[:id])

    if @training.update_attributes(params[:training])
      redirect_to training_path(@training)
    else
      render :new
    end
  end

  def show
    @trainings = Training.all
    @training = Training.find(params[:id])
  end

  def destroy
    training = Training.destroy(params[:id])
    redirect_to :back, :notice => "Training \"#{training.title}\" has been deleted"
  end
end
