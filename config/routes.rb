Rails.application.routes.draw do
  resources :problem_cases
  resources :cases
  resources :case_types
  get 'map/index'
  root 'map#index'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
