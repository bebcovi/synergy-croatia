# encoding: utf-8

class Admin::ProjectsController < AdminController
  manages :projects

  # Actions

  def index
    @projects = Project.scoped.paginate(page: params[:page], per_page: 5)
  end

  def new
    @project = Project.new
  end

  def create
    projects_manager.create(params[:project])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    projects_manager.update(params[:id], params[:project])
  end

  def destroy
    projects_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(project)
    redirect_to admin_projects_path, notice: "Projekt je uspješno stvoren."
  end

  def create_failed(project)
    @project = project
    render :new
  end

  def update_succeeded(project)
    redirect_to admin_projects_path, notice: "Projekt je uspješno izmijenjen."
  end

  def update_failed(project)
    @project = project
    render :edit
  end

  def destroy_succeeded(project)
    redirect_to admin_projects, notice: "Projekt je uspješno izbrisan."
  end
end
