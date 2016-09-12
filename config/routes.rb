Rails.application.routes.draw do
  resources :weeks do
    resources :days
  end
end
