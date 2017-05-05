Rails.application.routes.draw do
  get 'auth0/callback'

  get 'auth0/failure'

  get 'dashboard/show'

  get 'public_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # home page
  root 'public_pages#home'

  # Dashboard
  get 'dashboard' => 'dashboard#show'

  # Auth0 routes for authentication
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure'        => 'auth0#failure'



end
