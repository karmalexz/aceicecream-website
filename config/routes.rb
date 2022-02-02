Rails.application.routes.draw do
 
  
  post '/cart/add/:product_id/update' => 'cart#update_quantity', as:"cart_quantity_update"
  delete '/cart/destroy/:product_id'  => 'cart#destroy', as: 'line_item_deleted'

  post '/cart/add/:product_id' =>'cart#add_item', as:"cart_add_item"
  get '/cart/index' =>'cart#index'
  post '/cart/index' =>'cart#index'
  root 'home#home'

  get '/flavours' => 'home#index'
  get '/flavours/:id' => 'home#show', as:'flavour'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  # post '/signup' => 'user#create'
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]
  resources :orders

end
