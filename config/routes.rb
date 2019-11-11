Rails.application.routes.draw do

  get '/', to: 'application#root'
  get '/home', to: 'application#home', as: 'home'

  get '/users/:id', to: 'users#show', as: 'user_show'

  get '/crawls/new', to: 'crawls#new', as: 'new_crawl'

end
