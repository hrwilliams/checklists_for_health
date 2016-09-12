Rails.application.routes.draw do
  root :to => 'weeks#index'
  resources :weeks do
    resources :days
  end
end
