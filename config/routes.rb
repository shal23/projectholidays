Projectholidays::Application.routes.draw do

  get "attraction_map/index"

  get "about/index"
  match "about" => "about#index"

 # get "events/index"

 
 resources :events
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  match 'map.calendar_day "/calendar/:year/:month/:day", :controller => "calendar", :action => "day" '


  resources :attractions

  resources :agent_profiles

  resources :enquiries

  resources :deals

  resources :posts do 
    resources :comments
  end


  get "blog/index",:id => "blog"
  match "blog" => "blog#index"

  get "admin/index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end