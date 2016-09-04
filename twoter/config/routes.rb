Rails.application.routes.draw do
	root "twots#index"	
	# get"/", to: 'twots#index'
	
  resources :twots

  get "projects/new", to: "projects#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'projects', to: 'projects#index'
  post "projects/create", to: "projects#create"

end
