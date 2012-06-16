SynergyCroatia::Application.routes.draw do
  root :to => "pages#index"
  get "(:locale)", :constraints => {:locale => /en|hr/}, :to => "pages#index", :as => :index

  scope "(:locale)", :locale => /en|hr/ do
    get "news", :to => "pages#news"
    get "about", :to => "pages#about"
    get "archive", :to => "pages#archive"
    get "testimonials", :to => "pages#testimonials"
    get "method", :to => "pages#method"
    get "partners", :to => "pages#partners"

    resources :trainings

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
