Rails.application.routes.draw do
  # resources :artists
  # resources :genres
  # resources :songs

  root to: "welcome#index", as: "root"

  get "/artists", to: "artists#index", as: "artists"
  get "/artists/new", to: "artists#new", as: "new_artist"
  post "/artists", to: "artists#create"
  get "/artists/:id", to: "artists#show", as: "artist"
  get "/artists/:id/edit", to: "artists#edit", as: "edit_artist"
  patch "/artists/:id", to: "artists#update"
  delete "/artists/:id", to: "artists#destroy"

  get "/songs", to: "songs#index", as: "songs"
  get "/songs/new", to: "songs#new", as: "new_song"
  post "/songs", to: "songs#create"
  get "/songs/:id", to: "songs#show", as: "song"
  get "/songs/:id/edit", to: "songs#edit", as: "edit_song"
  patch "/songs/:id", to: "songs#update"
  delete "/songs/:id", to: "songs#destroy"

  get "/genres", to: "genres#index", as: "genres"
  get "/genres/new", to: "genres#new", as: "new_genre"
  post "/genres", to: "genres#create"
  get "/genres/:id", to: "genres#show", as: "genre"
  get "/genres/:id/edit", to: "genres#edit", as: "edit_genre"
  patch "/genres/:id", to: "genres#update"
  delete "/genres/:id", to: "genres#destroy"

end
