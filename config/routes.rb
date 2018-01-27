Rails.application.routes.draw do
  get '/', to: 'sessions#index'
  get '/:id', to: 'sessions#show'
  post '/:id', to: 'sessions#join'
  get '/game/:id', to: 'games#show'
  post '/game/:id', to: 'games#submit'
end
