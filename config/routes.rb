Rails.application.routes.draw do
  resources :beers

  resources :breweries

  root 'breweries#index'

  get 'kaikki_bisset', to: 'beers#index'

  get 'ratings', to: 'ratings#index'
end


