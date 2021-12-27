Rails.application.routes.draw do
  
  resources :users

  devise_for :users, :path => 'u', :controllers => { registrations: 'users/registrations' }

  authenticated do
    root :to => 'users#index', as: :authenticated
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
end
