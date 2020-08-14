Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
end
