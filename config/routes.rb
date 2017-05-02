Rails.application.routes.draw do
  
  get 'drivers/index'

  get 'places/index'
get 'students/index'

  root 'home#index'

get 'about'=>'about#index'
get 'home'=>'home#index'
resources  :students
resources :cabs
resources :drivers
#resources :students
get 'students/new', to: 'students#new'
post 'students/new', to: 'students#new'

 get 'students/index', to: 'students#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end















