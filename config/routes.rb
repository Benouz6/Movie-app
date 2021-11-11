Rails.application.routes.draw do
  resources :lists do
    resources :bookmark, only: [:create, :new]
  end
end
