Rails.application.routes.draw do
  devise_for :users
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/edit'
  # get 'journals/index'
  # get 'journals/show'
  # get 'journals/new'
  # get 'journals/edit'

  resources :journals
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
