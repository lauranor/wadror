Rails.application.routes.draw do
  resources :beer_clubs
  resources :memberships
  resources :users
  resource :session, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'

  resources :beers
  resources :breweries
  resources :ratings, only: [:index, :new, :create, :destroy]

  root 'breweries#index'
  #get 'kaikki_bisset', to: 'beers#index'



  #get 'ratings', to: 'ratings#index'

  #get 'ratings/new', to:'ratings#new'

  #post 'ratings', to: 'ratings#create'


end


