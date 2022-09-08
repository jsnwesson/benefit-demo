Rails.application.routes.draw do
  resources :aid_applications
  resources :benefit_applications
  root to: 'hello_world#index'
end
