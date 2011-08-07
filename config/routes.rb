Artapp::Application.routes.draw do
  devise_for :artists, :controllers => {:registrations => 'artists/registrations'}
  resources :artworks
  resource :artist, :only => [:show]
  root :to => 'home#index'
end
