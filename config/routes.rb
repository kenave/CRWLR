Rails.application.routes.draw do

  get '/', to: 'application#root'
  get '/home', to: 'application#home', as: 'home'

  get '/users/:id', to: 'users#show', as: 'show_user'

  get '/places/:id', to: 'places#show', as: 'show_place'

  get '/crawls/new', to: 'crawls#new', as: 'new_crawl'
  get 'crawls/:id', to: 'crawls#show', as: 'show_crawl'
  post '/crawls', to: 'crawls#create'

  post '/invites', to: 'invites#create'
  delete '/invites/:id', to: 'invites#delete', as: 'delete_invite'

end
