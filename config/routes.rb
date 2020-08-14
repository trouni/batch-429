Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show ]
end
