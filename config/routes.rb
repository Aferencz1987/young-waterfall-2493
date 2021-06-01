Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/studio/:id', to: 'studios#show'
  get '/movie/:id', to: 'movies#show'
end
