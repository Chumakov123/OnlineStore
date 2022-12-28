Rails.application.routes.draw do
  root "home#index"

  get 'register', to: 'register#new'
  post 'register', to: 'register#create'

  get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  #get 'logout', to: 'login#destroy'

  resources :product

  get "image" => "image#new"
  get "admin_user" => "admin_user#new"
  get "user" => "user#new"
  get "ord_prod" => "ord_prod#new"
  get "product" => "product#new"
  get "order" => "order#new"
end
