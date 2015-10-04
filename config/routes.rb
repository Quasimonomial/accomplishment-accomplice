Rails.application.routes.draw do
  resources :users

  resource :session, only: [:create, :destrory]
end
