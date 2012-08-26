SynergyCroatia::Application.routes.draw do
  scope "(:locale)", :locale => /en|hr/ do
    root :to => "pages#index"

    controller :pages do
      get "index"
      get "about"
      get "news"
      get "evs"
      get "archive"
      get "testimonials"
      get "partners"
    end

    controller :support do
      get "donate"
      get "volunteer"
    end

    resources :trainings

    controller :errors do
      match "404", :to => :not_found
      match "500", :to => :internal_server_error
    end
  end
end
