Rails.application.routes.draw do
  get 'sessions/new'
  get 'pictures/index'
  resources :users, only: [:new, :create, :show]
end

