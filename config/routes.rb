Rails.application.routes.draw do
  get '/mentions' => 'pages#mention'
  get '/presse' => 'pages#presse'
  devise_for :users
  root to: 'pages#home'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  resources :contacts, only: [:new, :create]
  resources :boutiques, only: [:index]
  resources :verreries
  resources :pictures, only: [:destroy]
  resources :tables
  resources :tpictures, only: [:destroy]
  resources :textiles
  resources :tepictures, only: [:destroy]
  resources :lifestyles
  resources :lpictures, only: [:destroy]
  resources :mobiliers
  resources :mpictures, only: [:destroy]
  resources :luminaires
  resources :lupictures, only: [:destroy]
  resources :enfants
  resources :epictures, only: [:destroy]
  resources :accessoires
  resources :apictures, only: [:destroy]
  resources :maroquineries
  resources :mapictures, only: [:destroy]
  resources :bijous
  resources :bpictures, only: [:destroy]
  resources :realisations
  resources :rpictures, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
