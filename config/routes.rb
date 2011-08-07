Artapp::Application.routes.draw do
  resources :artworks, :except => [:new, :create] 
  resources :artists do
    resources :artworks
  end
  root :to => 'artists#index'
end
