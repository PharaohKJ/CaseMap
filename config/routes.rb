Rails.application.routes.draw do
  resources :problem_cases
  resources :cases
  resources :case_types
  get 'map/index'
  root 'map#index'

  get '/auth/:provider/callback', to: 'users#auth',         as: :auth_callback
  get '/auth/failure',            to: 'users#auth_failure', as: :auth_failure
  get '/logout',                  to: 'users#logout',       as: :auth_logout
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
