Rails.application.routes.draw do
  
  resources :categories, only: [:index, :show]
  resources :products, only: [:index, :show]


  namespace :admin do
    root 'categories#index'
    resources :categories do 
      resources :products
    end
  end
  
  root 'pages#index'
  get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
