Rails.application.routes.draw do
  devise_for :users
  
  root :to => 'weeks#index'
  resources :weeks do
    resources :days
  end
end
