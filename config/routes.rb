Rails.application.routes.draw do
  devise_for :users

  get "filter", to: "posts#filter"
  get "search", to: "posts#search"

  resources :posts do
    resources :comments
    resources :likes
  end

  root "posts#index"
end
