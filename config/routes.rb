Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :edit] do
    resources :bookmarks, only: [:create, :new, :destroy]
  end
end
