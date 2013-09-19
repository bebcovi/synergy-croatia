ActiveAdmin.register Testimonial do
  menu parent: "Testimonials", priority: 1

  instance_eval(&Synergy.active_admin.testimonial)
end
