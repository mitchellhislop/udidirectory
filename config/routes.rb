Udidirectory::Application.routes.draw do
  resource :search, :only => [:show, :create]
  resources :udids, :except => [:show]

  get '/auth/twitter/callback', :to => 'session#create', :as => 'callback'
  get '/auth/failure', :to => 'session#error', :as => 'failure'
  get '/profile', :to => 'session#show', :as => 'show'
  get '/signout', :to => 'session#destroy', :as => 'signout'

  root :to => 'public#index'
end
