Rails.application.routes.draw do

  resources :users do

    resources :products
  end

  resources :products

end


#get '/users', to: 'users#index', as: 'users'
#get '/users/new', to: 'users#new'
#post '/users', to: 'users#create'
#get '/users/:id', to: 'users#show', as: 'user'


#get '/products', to: 'products#index', as: 'products'
#get '/products/new', to: 'products#new'
#post '/products', to: 'products#create'
#get '/products/:id', to: 'products#show', as: 'product'