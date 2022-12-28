Rails.application.routes.draw do
  root "home#index"

  get "login" => "login#new"
  get "register" => "register#new"
  get "image" => "image#new"
  get "admin_user" => "admin_user#new"
  get "user" => "user#new"
  get "ord_prod" => "ord_prod#new"
  get "product" => "product#new"
  get "order" => "order#new"
end
