Udidirectory::Application.routes.draw do
  resources :udids, :expect => [:show]

  devise_scope :user do
    get "signup", :to => "devise/registrations#new"
    get "signin", :to => "devise/sessions#new"
    get "signout", :to => "devise/sessions#destroy"
  end
  devise_for :users

  root :to => 'public#index'
end
