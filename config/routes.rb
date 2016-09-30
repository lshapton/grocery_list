Rails.application.routes.draw do
  resources :supply_variants
  resources :supplies
  resources :product_variants
  resources :products
  root :to => 'home#index'
  resources :home
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
