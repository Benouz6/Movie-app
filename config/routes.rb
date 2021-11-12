Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  resources :lists, only: [:index, :new, :show, :create, :edit] do
    resources :bookmark, only: [:create, :new, :destroy]
  end
end
