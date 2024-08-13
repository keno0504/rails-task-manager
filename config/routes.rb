Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path
  root "tasks#index"  # Set the root path to the tasks index

  # Task management routes
  resources :tasks
end
