Rails.application.routes.draw do
  #get 'pages/index'

  resources :pages
  resources :contacts
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
