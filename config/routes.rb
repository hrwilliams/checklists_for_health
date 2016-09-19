Rails.application.routes.draw do
  devise_for :users

  root :to => 'weeks#index'
  resources :users do
    resources :weeks
  end  
  resources :weeks do
    resources :days
  end
end
