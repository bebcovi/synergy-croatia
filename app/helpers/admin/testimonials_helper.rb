module Admin::TestimonialsHelper
  def back
    case params[:action]
    when ("new" or "create")  then admin_projects_path
    when ("edit" or "update") then admin_testimonials_path
    end
  end
end
