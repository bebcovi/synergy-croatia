ActiveAdmin.register Testimonial do
  menu parent: "Testimonials", priority: 2

  instance_eval(&Synergy.active_admin.testimonial)
end
