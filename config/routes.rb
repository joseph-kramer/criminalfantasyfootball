Rails.application.routes.draw do
  resources :missions
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'
  get 'rules' => 'pages#rules'

  get 'signup' => 'users#new'
  resources :users
  resource :session

  resources :quests
  resources :picks
  root "teams#index"
  resources :nflteams
  resources :crimes
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
