Rails.application.routes.draw do
  resources :styles
  resources :beer_clubs
  resources :memberships
  resources :users do
    post 'toggle_lock', on: :member
  end
  resource :session, only: [:new, :create, :destroy]
  resources :places, only:[:index, :show]
  resources :beers
  resources :breweries do
    post 'toggle_activity', on: :member
  end
  resources :ratings, only: [:index, :new, :create, :destroy]

  get 'signup', to: 'users#new'
  get 'signin', to: 'sessions#new'
  delete 'signout', to: 'sessions#destroy'
  get 'places', to: 'places#index'
  post 'places', to:'places#search'
  get 'beerlist', to:'beers#list'
  get 'ngbeerlist', to:'beers#nglist'
  get 'brewerylist', to:'breweries#list'

  root 'breweries#index'



  #get 'ratings', to: 'ratings#index'

  #get 'ratings/new', to:'ratings#new'

  #post 'ratings', to: 'ratings#create'


end


