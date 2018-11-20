Rails.application.routes.draw do
  root "courses#index"

  resources :users
  resources :courses do
    resources :enrollments, except: [:update]
  end
end
