Rails.application.routes.draw do
  root to: 'drawings#index'
  resources :drawings, only: [:index, :new, :create, :destroy]

end
