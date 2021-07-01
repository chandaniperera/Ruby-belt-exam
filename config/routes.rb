Rails.application.routes.draw do
  root 'users#new'
  
  get '/main' => 'users#new'
  post '/users/create' => 'users#create'
  post '/login' => 'sessions#create'

  get '/groups' => 'organizations#index' 
  get '/groups/:id' => 'organizations#show'
  post 'groups/create' => 'organizations#create'
  post '/groups/join' => 'organizations#join'
  post '/groups/unjoin' => 'organizations#unjoin'
  post '/groups/destroy' => 'organizations#destroy'

  get 'users/show'

  get 'sessions/new'
  delete 'sessions/:id' => 'sessions#destroy'

end
