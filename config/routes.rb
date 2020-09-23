Rails.application.routes.draw do
  get 'search/search'
  root 'home#top'
  get '/home/about' => "home#about"
  get '/search' => 'search#search'
  devise_for :users
  resources :books
  resources :users, only: [:show, :edit, :update, :index]
end
