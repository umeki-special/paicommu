Rails.application.routes.draw do
  resources :drawings, only: :index

end
