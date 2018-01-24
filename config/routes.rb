Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'resturants#index'
  resources :resturants

  # get 'resturants' => 'resturants#index'
  #
  # post 'resturants' => 'resturants#create'
  # get 'resturants/new' => 'resturants#new'
  #
  # get 'resturants/:id' => 'resturants#show'
  #
  # get 'resturants/:id/edit' => "resturants#edit"
  # patch 'resturants/:id' => "resturants#update"
  #
  # delete 'resturants/:id' => 'resturants#destroy'


  get 'sessions/new' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'

# User

  resources :users
# Reservations

  resources :reservations
  # get 'reservations/new' => 'reservations#new'
  # post 'reservations/create' => 'reservations#create'
  #
  # root 'reservations#index'
  #
  # get 'reservations' => 'reservations#index'
  #
  # post 'reservations' => 'reservations#create'
  # get 'reservations/new' => 'reservations#new'
  #
  # get 'reservations/:id' => 'reservations#show'
  #
  # get 'reservations/:id/edit' => "reservations#edit"
  # patch 'reservations/:id' => "reservations#update"
  #
  # delete 'reservations/:id' => 'reservations#destroy'
  #
  #
  get 'sessions/new' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'
  


end
