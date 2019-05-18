Rails.application.routes.draw do
  get 'events/index'
  post 'events/create' => 'events#create'
  get 'events/new' => 'events#new'
  get 'events/:id' => 'events#show'


  get 'home/index' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'application#hello'
  
  
end
