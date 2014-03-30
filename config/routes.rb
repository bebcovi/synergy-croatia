SynergyCroatia::Application.routes.draw do
  scope "(:locale)", locale: /en|hr/ do
    root to: "pages#news"

    controller :pages do
      get "about"
      get "news"
      get "evs"
      get "trainings"
      get "projects"
      get "testimonials"
      get "partnerships"
      get "gallery"
      get "contact"
    end

    resources :albums

    controller :support do
      get "donate"
      get "volunteer"
      post "volunteer", to: :create_volunteer
    end
  end
end
