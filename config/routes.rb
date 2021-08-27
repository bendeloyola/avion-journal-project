Rails.application.routes.draw do
  # get 'journals/index'
  # get 'journals/show'
  # get 'journals/new'
  # get 'journals/edit'

  resources :journals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
