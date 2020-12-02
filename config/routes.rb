Rails.application.routes.draw do
  resources :card_reviews
  resources :groups
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  resources :cards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
