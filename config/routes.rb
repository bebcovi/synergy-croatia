SynergyCroatia::Application.routes.draw do
  scope "(:locale)", :locale => /en|hr/ do
    root :to => "pages#index"
    get "news", :to => "pages#news"
    get "about", :to => "pages#about"
    get "archive", :to => "pages#archive"
    get "method", :to => "pages#method"
    get "partners", :to => "pages#partners"

    resources :trainings
    resources :testimonials

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
