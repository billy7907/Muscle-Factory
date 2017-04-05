Rails.application.routes.draw do

  root to: "home#index"

  patch '/users/:id/edit_password' => 'users#edit_password', as: :edit_password

  get 'drills/gateway' => 'drills#gateway', as: :gateway
  get 'drills/map' => 'drills#map', as: :map
  get 'drills/share' => 'drills#share', as: :share
  get 'drills/filter' => 'drills#filter', as: :filter

  get '/auth/twitter', as: :sign_in_with_twitter
  get 'auth/twitter/callback' => 'callbacks#twitter'

  get "/auth/facebook", as: :sign_in_facebook
  get "/auth/facebook/callback" => 'callbacks#facebook'

  resources :users, except: [:destroy]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :drills, except: [:update, :edit]

  resources :groups, only: :index

  resources :exercises, only: [:index, :show]

end
