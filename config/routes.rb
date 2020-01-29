Rails.application.routes.draw do
  resources :student_profiles
  get 'users/index'
  get 'home/index'
  resources :subscriptions
  resources :assignments
  resources :group_additions
  resources :instructor_profiles
  resources :groups

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }, :path_prefix => 'd'

  resources :users do
    resource :instructor_profile
  end

  resources :courses do
    resources :groups
    resources :subscriptions
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
