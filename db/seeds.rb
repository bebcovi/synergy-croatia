Category.destroy_all
load("#{Rails.root}/db/seeds/categories.rb")

Project.destroy_all
load("#{Rails.root}/db/seeds/projects.rb")
