SynergyCroatia::Application.routes.draw do
  scope "(:locale)", locale: /en|hr/ do
    root to: "pages#news"

    controller :pages do
      get "about"
      get "news"
      get "evs"
      get "archive"
      get "testimonials"
      get "partners"
      get "contact"
    end

    controller :support do
      get "donate"
      get "volunteer"
      post "volunteer", to: :create_volunteer
    end
  end
end
