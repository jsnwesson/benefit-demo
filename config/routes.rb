Rails.application.routes.draw do
  resources :benefit_applications
  root to: 'hello_world#index'
end
