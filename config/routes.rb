Rails.application.routes.draw do
  resources :users
  root 'movies#index'
  resources :movies do
    resources :reviews
  end
  resource :session, only: %i[new create destroy]

  get 'signup' => 'users#new'
end
