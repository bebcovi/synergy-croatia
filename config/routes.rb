SynergyCroatia::Application.routes.draw do
  scope "(:locale)", :locale => /en|hr/ do
    root :to => "pages#about"

    controller :pages do
      get "about"
      get "news"
      get "evs"
      get "archive"
      get "testimonials"
      get "partners"
    end

    resources :trainings

    controller :errors do
      match "404", :to => :not_found
      match "500", :to => :internal_server_error
    end
  end
end
