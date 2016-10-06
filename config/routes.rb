Rails.application.routes.draw do
  devise_for :users

  root :to => 'weeks#index'
  resources :users do
    resources :weeks
  end
  resources :weeks do
    resources :physical_tasks
    resources :mental_tasks
    resources :ongoing_tasks
    resources :one_and_dones
    resources :messages
  end
end
