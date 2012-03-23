SynergyCroatia::Application.routes.draw do
  root :to => "pages#index"
  get "(:locale)", :constraints => {:locale => /en|hr/}, :to => "pages#index", :as => :root

  scope "(:locale)", :locale => /en|hr/ do
    resources :trainings

    match "404", :to => "errors#not_found"
    match "500", :to => "errors#internal_server_error"
  end
end
