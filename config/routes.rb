Rails.application.routes.draw do
root to: "pages#home"
get "/artworks", to: "artworks#index"
get "/artworks", to: "artworks#index"
get "/artworks/:id", to: "artworks#show"
get "/artworks/:id/offers/new", to: ‘offers#new’
post "/artworks/:id/offers", to: ‘offers#create’
get "/users/:id", to: "users#show"
get "/artworks/new", to: "artworks#new"
post "/artworks/create", to: "artworks#create"
get "/users/:id/artworks", to: "users#index"
get "/users/:id/offers", to: "offers#index"
get "/users/:id/offers/:id", to: "offers#edit"
patch "/users/:id/offers/:id", to: "offers#update"
delete "/users/:id/artworks/:id", to: "artworks#destroy"
get "/users/:id/artworks/:id/edit", to: "artworks#edit"
patch "/users/:id/artworks/:id", to: "artworks#update"
get "/users/:id/edit", to: "users#edit"
patch "/users:id", to: "users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
