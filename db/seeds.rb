def my_file(filename)
  content_type = CONTENT_TYPES[filename[/\.\w{3,4}$/]]
  Rack::Test::UploadedFile.new("#{Rails.root}/db/seeds/files/#{filename}", content_type)
end

CONTENT_TYPES = {
  ".pdf" => "application/pdf",
  ".doc" => "application/msword"
}

Category.destroy_all
load("#{Rails.root}/db/seeds/categories.rb")

Project.destroy_all
Dir["#{Rails.root}/db/seeds/projects/*.rb"].each do |project|
  load project
end

Testimonial.destroy_all
load("#{Rails.root}/db/seeds/testimonials.rb")

Announcement.destroy_all
load("#{Rails.root}/db/seeds/announcement.rb")
