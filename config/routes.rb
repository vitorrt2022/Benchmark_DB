Rails.application.routes.draw do
  resources :logs_mercs
  resources :terrorist_matches
  resources :terrorists
  resources :merchants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "check#check"
end
