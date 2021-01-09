Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # show all articles
  get "articles", to: "articles#index"

  # create new article - 2 Steps GET and POST
  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"

  # show one article
  get "articles/:id", to: "articles#show", as: :article
end
