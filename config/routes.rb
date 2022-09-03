Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms, only: :show do
    resources :messages, only: :create
    member do
      get :turbo_stream
    end
  end
end
