FindYourCar::Application.routes.draw do
  
  root :to => "home#index"
  
  # get "mission/index"

  resources :mission, :only => [:index]

  resources :surveys, :only => [:new, :create, :show, :destory]

  resources :cars, :only => [:index, :show]

  resources :users, :only => [:new, :create, :show, :destroy]

  resources :sessions, :only => [:new, :create, :destroy]

  # get '/cars/:name', :to => "cars#show", :as => 'car'

end
