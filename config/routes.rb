Rails.application.routes.draw do
  get 'categorical' => 'storefront#items_by_category'

  resources :categories
  resources :products
  devise_for :users

  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
