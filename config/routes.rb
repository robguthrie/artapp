Artapp::Application.routes.draw do
  resources :artists

  resources :artworks

  devise_for :artists

  resources :artists do
    resources :artworks
  end
  root :to => 'artists#index'
end
