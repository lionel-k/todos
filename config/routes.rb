Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos, only: [:new, :create] do
    post 'complete', on: :member, to: 'completions#create'
    delete 'incomplete', on: :member, to: 'completions#destroy'
  end
  resource :session, only: [:new, :create]
end
