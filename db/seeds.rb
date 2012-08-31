Category.destroy_all
load("#{Rails.root}/db/seeds/categories.rb")

Training.destroy_all
load("#{Rails.root}/db/seeds/trainings.rb")
