Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'api#index'
  post '/api/search' , controller: 'api', action: 'search'
  get '/api/search' , controller: 'api', action: 'search'
end
