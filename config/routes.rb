Rails.application.routes.draw do
  get 'add/Product'
  root "home#index"

  get 'register', to: 'register#new'
  post 'register', to: 'register#create'

  get 'login', to: 'login#new'
  post 'login', to: 'login#create'
  get 'logout', to: 'login#destroy'

  get 'product', to: 'product#index'

  get 'add_product', to: 'add_product#new'
  post 'add_product', to: 'add_product#create'
  post 'delete_product', to: 'add_product#destroy'

  get 'add_category', to: 'add_category#new'
  post 'add_category', to: 'add_category#create'
  get 'delete_category', to: 'add_category#destroy'
  delete 'delete_category', to: 'add_category#destroy'

  get 'delete_product', to: 'add_product#destroy'
  delete 'delete_product', to: 'add_product#destroy'

  get "image" => "image#new"
  get "admin_user" => "admin_user#new"
  get "user" => "user#new"
  get "ord_prod" => "ord_prod#new"
  get "product" => "product#new"
  get "order" => "order#new"

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    resource :password_reset, only: %i[new create edit update]
  end

end
