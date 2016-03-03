Rottenpotatoes::Application.routes.draw do
  root 'movies#index'
  resources :movies
  # map '/' to be a redirect to '/movies'
  # root :to => redirect('/movies')
  match 'movies/:id/director' => 'movies#director', :as => :director, :via => [:get]
end

