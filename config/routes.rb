Rails.application.routes.draw do
 
  get '/cart' =>'cart#new'
  get '/cart/index' =>'cart#index'
  
  root 'home#home'

  get '/flavours' => 'home#index'
  get '/flavours/:id' => 'home#show', as:'flavour'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
