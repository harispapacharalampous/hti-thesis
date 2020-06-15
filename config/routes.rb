Rails.application.routes.draw do
  resources :waters
  resources :coffees
  resources :meetings
  resources :events
  resources :posts
  root to: 'pages#home'
  get "/pages/*page" => "pages#show"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
