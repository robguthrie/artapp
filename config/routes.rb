Artapp::Application.routes.draw do
  devise_for :artists, :controllers => {:registrations => 'artists/registrations'}
  namespace :admin do
    resources :artworks, :except => [:new, :create]
    resources :artists
  end
  resources :artworks
  resource :artist, :only => [:show]
  root :to => 'home#index'
end
