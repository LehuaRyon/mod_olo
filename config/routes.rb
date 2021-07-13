Rails.application.routes.draw do
  root to: 'application#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  resources :users
  resources :orders
  resources :pizzas do
     resources :orders, only: [:index, :new, :create]
  end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
