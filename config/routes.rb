Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resources :comments, only: [:new, :create, :show, :destroy] # nested routes to allow ID comparisons on show page
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
