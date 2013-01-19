Testimonial.destroy_all
Dir[Rails.root.join("db/seeds/testimonials/**/*.rb")].each &method(:load)
