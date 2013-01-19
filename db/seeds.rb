require "active_support/core_ext/string/strip"

def my_file(filename)
  content_type = CONTENT_TYPES[filename[/\.\w{3,4}$/]]
  Rack::Test::UploadedFile.new("#{Rails.root}/db/seeds/files/#{filename}", content_type)
end

CONTENT_TYPES = {
  ".pdf" => "application/pdf",
  ".doc" => "application/msword"
}

load Rails.root.join("db/seeds/categories.rb")
load Rails.root.join("db/seeds/projects.rb")
load Rails.root.join("db/seeds/posts.rb")
load Rails.root.join("db/seeds/testimonials.rb")
load Rails.root.join("db/seeds/announcements.rb")
