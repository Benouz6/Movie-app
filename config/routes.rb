Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :edit, :destroy] do
    resources :bookmarks, only: [:create, :new, :destroy]
  end
end
