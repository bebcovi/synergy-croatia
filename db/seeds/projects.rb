Project.destroy_all
Dir[Rails.root.join("db/seeds/projects/**/*.rb")].each &method(:load)
