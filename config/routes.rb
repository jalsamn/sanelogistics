Rails.application.routes.draw do
  get 'static_pages/dashboard'

  get 'static_pages/help'
  
  resources :users, only: [:index]


  resources :order_items
  resources :cases
  resources :products
  resources :customers do
    collection { post :import }
  end
  resources :external_systems
  resources :order_statuses
  resources :settings
  resources :locations
  resources :order_item_statuses
  resources :case_types
  root 'home#index'

  resources :orders
  devise_for :users, controllers: { registrations: "registrations" }
 
end
