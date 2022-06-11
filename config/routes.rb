Rails.application.routes.draw do
  resources :photos, only: [:create, :index, :show, :update, :destroy]
end
