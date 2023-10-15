# Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  #get 'doctor/index'
  #get 'receptionist/index'
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
# end

Rails.application.routes.draw do
  root 'sessions#new'

  get 'receptionist', to: 'receptionist#index'
  resources :patients

  #get 'receptionist', to: 'receptionist#index'
  get 'doctor', to: 'doctor#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
