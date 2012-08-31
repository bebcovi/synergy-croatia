# encoding: utf-8

class ProjectsController < ApplicationController
  manages :projects
  before_filter :authorize!

  # Actions

  def new
    @project = Project.new
  end

  def create
    project_manager.create(params[:project])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project_manager.update(params[:id], params[:project])
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    project_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(project)
    redirect_to project
  end

  def create_failed(project)
    @project = project
    render :new
  end

  def update_succeeded(project)
    redirect_to project
  end

  def update_failed(project)
    @project = project
    render :edit
  end

  def destroy_succeeded(project)
    redirect_to news_path, notice: "Trening je uspješno izbrisan."
  end
end
