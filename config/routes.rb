Rails.application.routes.draw do
  get 'products/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home_page#index'
  get 'shop', to: 'products#index'
end
