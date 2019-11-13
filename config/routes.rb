Rails.application.routes.draw do

  get '/', to: 'application#root'
  get '/home', to: 'application#home', as: 'home'

  get '/users/:id', to: 'users#show', as: 'show_user'

  get '/places/:id', to: 'places#show', as: 'show_place'

  get '/crawls/new', to: 'crawls#new', as: 'new_crawl'
  get 'crawls/:id', to: 'crawls#show', as: 'show_crawl'
  post '/crawls', to: 'crawls#create'

<<<<<<< HEAD
  get 'crawls/:crawl_id/places/select', to: 'crawl_places#type_select', as: 'select_place_type'
  get 'crawls/:crawl_id/places/', to: 'crawl_places#category_select', as: 'select_search_category'
  get 'crawls/:crawl_id/places/search/', to: 'crawl_places#search_results', as: 'search_results'
  get '/crawls/:id/places/new', to: 'crawl_places#new', as: 'new_crawl_place'
=======
  post '/invites', to: 'invites#create'
  delete '/invites/:id', to: 'invites#delete', as: 'delete_invite'
>>>>>>> invite-guest

end
