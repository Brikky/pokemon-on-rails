Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show]
  resources :element_types, only: [:index, :show]
  resources :trainers, only: [:new, :create] do
    resources :pokemon_groups, except: [:destroy]
  end
  resources :teams, only: [:destroy]
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'trainers#new'
  post '/trainers' => 'trainers#create'

  root to: 'pokemons#index'
  get '*path' => redirect('/')
end
