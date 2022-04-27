Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  post '/rooms/:user_id', to: 'rooms#create'
  post 'rooms', to: 'rooms#index', as: "create_room"
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # post 'users/sign_up', to: 'users/registrations#create'
  root "pages#home"
  get 'user/:id', to: 'users#show', as: 'user'
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
    get "/users/sign_out" => "devise/sessions#destroy"
    post "/users/sign_up" => "devise/registrations#create"
  end
end
