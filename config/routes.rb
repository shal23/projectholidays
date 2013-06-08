Projectholidays::Application.routes.draw do
  resources :agent_profiles


  resources :enquiries


  resources :deals


  resources :comments


  resources :posts


  get "blog/index"

  get "admin/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end