Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  root 'pages#index'
  get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
