Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dogs#index"
  get '/dogs/fetch_dog', to: 'dogs#fetch_dog'

end
