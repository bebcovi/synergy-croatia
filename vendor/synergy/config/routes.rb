Synergy.app.routes.draw do
  get "login", to: redirect("/admin")

  scope "(:locale)", locale: /en|hr/ do
    resources :projects, only: :show
    resources :posts, only: :show

    controller :errors do
      match ":code", to: :show, constraints: {code: /\d+/},
        via: [:get, :post, :put, :patch, :delete]
    end
  end

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
