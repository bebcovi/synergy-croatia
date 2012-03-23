SynergyCroatia::Application.routes.draw do
  root :to => "pages#index"
  get "(:locale)", :constraints => {:locale => /en|hr/}, :to => "pages#index", :as => :root

  scope "(:locale)", :locale => /en|hr/ do
    get "about", :to => "pages#about"
    get "projects", :to => "pages#projects"
    get "collaboration", :to => "pages#collaboration"
    get "experience", :to => "pages#experience"
    get "method", :to => "pages#method"

    resources :trainings

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
