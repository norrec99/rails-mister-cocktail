Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get "/", to: 
  # get "/cocktails", to: "cocktails#index"
  
  resources :cocktails, only: [ :index, :show, :new, :create, :destroy ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy]
  root to: 'cocktails#index'
end
