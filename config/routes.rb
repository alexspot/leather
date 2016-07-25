Rails.application.routes.draw do
  # get 'order_items/create'
  #
  # get 'order_items/update'
  #
  # get 'order_items/destroy'
  #
  # get 'carts/show'
  #
  # get 'products/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'products#index'
  get 'shop', to: 'products#index'
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end
