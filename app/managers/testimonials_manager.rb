class TestimonialsManager < BaseManager
  def create_for(project, attributes)
    testimonial = project.testimonials.new(attributes)

    if testimonial.save
      create_succeeded(testimonial)
    else
      create_failed(testimonial)
    end
  end

  def update(id, attributes)
    testimonial = Testimonial.find(id)

    if testimonial.update_attributes(attributes)
      update_succeeded(testimonial)
    else
      update_failed(testimonial)
    end
  end

  def destroy(id)
    testimonial = Testimonial.destroy(id)
    destroy_succeeded(testimonial)
  end
end
