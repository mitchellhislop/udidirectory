Udidirectory::Application.routes.draw do
  match "search", :to => "search#show", :via => [:get, :post]
  resources :udids, :except => [:show]
  resources :twitter_users, :only => [:show], :path => "user"

  get '/auth/twitter/callback', :to => 'session#create', :as => 'callback'
  get '/auth/failure', :to => 'session#error', :as => 'failure'
  get '/profile', :to => 'session#show', :as => 'show'
  get '/signout', :to => 'session#destroy', :as => 'signout'

  get '/start', :to => 'public#start'
  get '/usernotfound', :to => 'public#not_found'
  get '/faq', :to => "public#faq"

  root :to => 'public#index'
end
