Rails.application.routes.draw do
  resources :users
  resources :black_accounts
  resources :blue_accounts
  resources :red_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
