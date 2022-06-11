Rails.application.routes.draw do
  get '/', to: 'photos#index'
  resources :photos
end
