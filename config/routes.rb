Artapp::Application.routes.draw do
  devise_for :artists, :controllers => {:registrations => 'artists/registrations'}
  namespace :artists do
    resources :artworks
  end
  namespace :admin do
    resources :artworks, :except => [:new, :create]
    resources :artists
  end
  resources :artworks, :only => [:index, :show]
  resource :artist, :only => [:show]
  root :to => 'home#index'
end
