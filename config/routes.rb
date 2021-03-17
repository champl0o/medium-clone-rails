Rails.application.routes.draw do
  get "filter", to: "posts#filter"
  get "search", to: "posts#search"
  root "posts#index"
  resources :posts
end
