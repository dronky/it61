Rails.application.routes.draw do
  root to: 'events#index'

  #admin log in/log out route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :admin do
    resources :events, only: [:new, :create, :edit, :update, :destroy]
    resources :settings, only: [:index]
    post '/delivery_days' => 'settings#set_delivery_days'
  end

  resources :events, only: [:index, :show] do
    get :ics_calendar
  end

  resources :organizers, only: [:index, :show]
  resources :subscribers, only: [:new, :create]
  resources :search, only: [:index]

end
