Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :sports, only: [:index]
  resources :events do
    resources :participations, only: [:new, :create]
    resources :posts, except: :show do
      resources :replies, except: :show
    end
  end

  resources :participations, only: [:edit, :update, :destroy, :index]
  resources :users, only: [:show] do
    resources :user_sports, only: [:create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
