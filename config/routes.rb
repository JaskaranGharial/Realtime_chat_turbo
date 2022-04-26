Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  resources :rooms
  post 'rooms', to: 'rooms#index', as: "create_room"
  devise_for :users
  root "pages#home"
  get 'user/:id', to: 'users#show', as: 'user'
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
    get "/users/sign_out" => "devise/sessions#destroy"
  end
end
