Rails.application.routes.draw do
  get 'pictures/index'
  resources :users, only: [:new, :create, :show]
end

