Artapp::Application.routes.draw do
  devise_for :bidders do

  end


  devise_for :artists, :controllers => {:registrations => 'artists/registrations'}
  namespace :artists do
    resources :artworks
  end
  namespace :admin do
    resources :artworks, :except => [:new, :create]
    resources :artists
  end
  resources :artworks, :only => [:index, :show] do
    resources :bids
  end
  resource :artist, :only => [:show]
  root :to => 'artworks#index'
end
