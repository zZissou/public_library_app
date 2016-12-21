Rails.application.routes.draw do
    root to: 'users#index'

    get '/users/new', to: 'users#new', as: 'new_user'
    post '/users', to: 'users#create'
    get '/users/:id', to: 'users#show', as: 'user'
    get '/login', to: 'sessions#new'
    get '/logout', to: 'sessions#destroy'
    post '/sessions', to: 'sessions#create'
    get '/libraries', to: 'libraries#index'
    get '/libraries/new', to: 'libraries#new', as: 'new_library'
    post '/libraries', to: 'libraries#create'
    get '/users/:user_id/libraries', to: 'library_users#index', as: 'user_libraries'
    get '/users/:user_id/libraries', to: 'library_users#index', as: 'user_libraries'
    post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'
end
