Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:index, :show, :update, :destroy, :create]

  resources :artworks, only:[:show, :update, :destroy, :create]

  resources :artwork_shares, only:[:create, :destroy]

  resources :users do
    resources :artworks, only:[:index]
  end  #get 'users/:user_id/artworks'





end
