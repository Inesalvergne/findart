Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :art_pieces do
    resources :offers, only: %i[new create]
    collection do
      get :my_artpieces
    end
  end
  resources :offers, only: %i[index edit update destroy]
end
