Komanda::Application.routes.draw do

  root :to => 'events#index'
  resources :events do
    get :join, on: :member
  end
  
  resources :orders
  
  match '/auth/:provider/callback' => 'sessions#create'
  match '/auth/failure' => 'parties#index'
  match '/signin' => 'sessions#new', as: :signin
  match '/signout' => 'sessions#destroy', as: :signout
end
