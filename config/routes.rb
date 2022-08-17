Rails.application.routes.draw do
  resources :genres
  resources :users
  root 'movies#index'
  resources :movies do
    resources :reviews
    resources :favorites, only: %i[create destroy]
  end
  resource :session, only: %i[new create destroy]

  get 'signup' => 'users#new'
end
