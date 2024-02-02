Rails.application.routes.draw do
  get "bienvenida", to: "home#index"
  #resources :articles  
  
  get "articles/new", to: "articles#new"
  get "articles/:id", to: "articles#show"
  get "articles/:id/edit", to: "articles#edit"

  put "/articles/:id", to: "articles#update", as: :article
  post "articles", to: "articles#create"

end

