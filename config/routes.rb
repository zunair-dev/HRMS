Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users, controllers: { sessions: 'users/sessions' }
  namespace :user do
    resource :jwt, only: [:create, :destroy]
  end
end
