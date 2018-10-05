Rails.application.routes.draw do
  get 'orders/your_orders'
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  post 'delete_from_cart' => 'cart#delete_from_cart'

  post 'order_complete' => 'cart#order_complete'

  get 'your_orders' => 'orders#your_orders'

  post 'cancel_checkout' => 'cart#cancel_checkout'

  devise_for :users

  get 'categorical' => 'storefront#items_by_category'


  resources :categories
  resources :products

  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
