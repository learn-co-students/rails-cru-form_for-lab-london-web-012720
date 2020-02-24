Rails.application.routes.draw do
  # resources :artists, only: [:show, :create, :update]
  #  resources :genres, only: [:show, :create, :update]
  # resources :songs, only: [:show, :create, :update]
  #get "artists/create" => "artists#create", :as => :create
  resources :artists
  resources :genres 
  resources :songs 
  # get 'songs/create'
  # get 'songs/update'
  # get 'songs/show'

  # get 'genres/create'
  # get 'genres/update'
  # get 'genres/show'

  # get 'artists/create'
  # get 'artists/update'
  # get 'artists/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
