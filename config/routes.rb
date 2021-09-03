Rails.application.routes.draw do
  
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/edit'
  # get 'journals/index'
  # get 'journals/show'
  # get 'journals/new'
  # get 'journals/edit'

  # root to: 'users/sign_in'

  

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

  resources :journals
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
