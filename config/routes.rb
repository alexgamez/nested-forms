Rails.application.routes.draw do
  root 'countries#index'
  resources :countries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
