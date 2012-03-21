SynergyCroatia::Application.routes.draw do
  root :to => "home#index"
  get "", :to => "home#index"

  match "404", :to => "errors#not_found"
  match "500", :to => "errors#internal_server_error"
end
