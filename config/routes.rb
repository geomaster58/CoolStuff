Rails.application.routes.draw do
  resources :lots_a_stuffs
  get 'pages/home'

  get 'pages/coolio'

  get 'pages/random'

  get 'pages/stuffIknow'

  resources :cools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "faq" => 'cools#faq'
  get "testing" => 'cools#testing'
end
