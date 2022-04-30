Rails.application.routes.draw do
root to: "pages#home"

get "/artpiece/" to, "artpiece#index"

get "/artpiece/:id" to, "artpiece#show"

get "/artpiece/new" to, "artpiece#new"

post "/artpiece" to, "artpiece#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
