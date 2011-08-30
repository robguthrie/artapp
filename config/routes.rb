Artapp::Application.routes.draw do
  get "bidders/index"

  get "reports/new"

  get "reports/create"

  devise_for :bidders do

  end


  devise_for :artists, :controllers => {:registrations => 'artists/registrations'}
  namespace :artists do
    resources :artworks
  end
  namespace :admin do
    resources :bidders, :only => [:index]
    resources :bids
    resources :artworks, :except => [:new, :create] do
      resources :bids
      post :email_winner, :on => :member
    end
    resources :artists
  end
  resources :artworks, :only => [:index, :show] do
    resources :bids
  end
  resource :artist, :only => [:show]
  root :to => 'artworks#index'
end
