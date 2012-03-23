SynergyCroatia::Application.routes.draw do
  root :to => "home#index"
  get "(:locale)", :constraints => {:locale => /en|hr/}, :to => "home#index"

  scope "(:locale)", :locale => /en|hr/ do
    resources :trainings

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
