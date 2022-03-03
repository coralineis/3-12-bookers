Rails.application.routes.draw do
  get 'homes/top'
  resources :books
  root to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
