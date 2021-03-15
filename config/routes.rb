Rails.application.routes.draw do
  get "search", to: "posts#search"
  root "posts#index"
  resources :posts
end
