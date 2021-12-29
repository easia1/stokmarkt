Rails.application.routes.draw do
  
  resources :users
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" },
  :controllers => { registrations: 'users/registrations' }

  authenticated do
    root :to => 'dashboards#index', as: :authenticated
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  patch 'users/:id/change_status' => 'users#change_status', as: :change_status_user

end
