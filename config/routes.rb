Projectholidays::Application.routes.draw do
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  match map.calendar_day "/calendar/:year/:month/:day", :controller => "calendar", :action => "day"

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