Post.destroy_all
Dir[Rails.root.join("db/seeds/posts/**/*.rb")].each &method(:load)
