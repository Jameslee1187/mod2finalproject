Rails.application.routes.draw do
  get 'sessions/new'
  resources :locations
  resources :potluck_foods
  resources :potlucks
  resources :food_categories
  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
