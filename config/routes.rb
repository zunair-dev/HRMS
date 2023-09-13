Rails.application.routes.draw do
  resources :leaves
  resources :attendances
  resources :salaries
  resources :job_positions
  resources :departments
  resources :employees
  root to: "home#index"

  devise_for :users, controllers: { sessions: 'users/sessions' }
  namespace :user do
    resource :jwt, only: [:create, :destroy]
  end
end
