Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :new, :show] do
    resources :notes
  end

  resource :session, only: [:create, :new, :destroy]

  root to: 'pages#home'

end
