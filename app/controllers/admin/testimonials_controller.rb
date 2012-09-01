# encoding: utf-8

class Admin::TestimonialsController < AdminController
  manages :testimonials

  # Actions

  def index
    @testimonials = Testimonial.scoped.paginate(page: params[:page], per_page: 5)
  end

  def new
    project = Project.find(params[:project_id])
    @testimonial = project.testimonials.new
  end

  def create
    project = Project.find(params[:project_id])
    testimonials_manager.create_for(project, params[:testimonial])
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def update
    testimonials_manager.update(params[:id], params[:testimonial])
  end

  def destroy
    testimonials_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(testimonial)
    redirect_to admin_testimonials_path, notice: "Iskustvo polaznika je uspješno stvoreno."
  end

  def create_failed(testimonial)
    @testimonial = testimonial
    render :new
  end

  def update_succeeded(testimonial)
    redirect_to admin_testimonials_path, notice: "Iskustvo polaznika je uspješno izmijenjeno."
  end

  def update_failed(testimonial)
    @testimonial = testimonial
    render :edit
  end

  def destroy_succeeded(testimonial)
    redirect_to admin_testimonials_path, notice: "Iskustvo polaznika je uspješno izbrisano."
  end
end
