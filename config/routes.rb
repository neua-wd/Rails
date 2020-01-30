Rails.application.routes.draw do
  resources :student_profiles
  get 'users/index'
  get 'home/index'

  get  'new_student',  to: 'users#new'
  post 'new_student',  to: 'users#add_user'

  resources :subscriptions
  resources :assignments
  resources :group_additions
  resources :instructor_profiles
  
  resources :groups do
    resources :assignments
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }, :path_prefix => 'd'

  resources :users do
    resource :instructor_profile
    resources :assignments

    collection do
      get 'add_group'
    end
  end

  resources :courses do
    resources :groups
    resources :subscriptions
  end

  resources :filter, only: [:index] do
    collection do
      get 'results'
    end
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
