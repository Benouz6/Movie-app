Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :new] do
    resources :bookmark, only: [:create, :show, :new, :index]
  end
end
