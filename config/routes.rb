Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "teams#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :teams, only: [:index,:show]
  resources :a_tasks, only: [:index]
  resources :b_tasks, only: [:index]
  resources :c_tasks, only: [:index]
end
