class TrainingsController < ApplicationController
  def new
    @training = Training.new
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
    @training = Training.find(params[:id])
  end

  def destroy
    training = Training.destroy(params[:id])
    redirect_to :back, :notice => "Training \"#{training.title}\" has been deleted"
  end
end
