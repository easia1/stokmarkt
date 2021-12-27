Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'users/registrations' }

  authenticated do
    root :to => 'users#index', as: :authenticated
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  match '/users',   to: 'users#index',   via: 'get'
end
