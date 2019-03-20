Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos, only: [:new, :create] do
    member do
      post 'complete', to: 'completions#create'
      delete 'incomplete', to: 'completions#destroy'
    end
  end
  resource :session, only: [:new, :create]
end
