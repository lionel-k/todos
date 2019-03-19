Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos, only: [:new, :create] do
    post 'complete', on: :member, to: 'completions#create'
  end
  resource :session, only: [:new, :create]
end
