SynergyCroatia::Application.routes.draw do
  scope "(:locale)", locale: /en|hr/ do
    root to: "pages#index"

    controller :sessions do
      get "login", to: :new
      post "login", to: :create
      delete "logout", to: :destroy
    end

    controller :pages do
      get "index"
      get "about"
      get "news"
      get "evs"
      get "archive"
      get "testimonials"
      get "partners"
      get "contact"
    end
    scope only: :show do
      resources :projects
      resources :posts
    end

    controller :support do
      get "donate"
      get "volunteer"
      post "volunteer", to: :create
    end
  end

  namespace :admin do
    scope "(:locale)", locale: /en|hr/ do
      root to: "home#index"

      resources :projects do
        resources :testimonials, only: [:new, :create]
      end
      resources :testimonials, except: [:new, :create]
      resources :categories
      resources :posts
      resource :announcement
    end
  end

  scope "(:locale)", locale: /en|hr/ do
    controller :errors do
      match "404", to: :not_found
      match "500", to: :internal_server_error
    end
  end
end
