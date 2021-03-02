Rails.application.routes.draw do
  resources :songs, only: %i[index show new edit update create destroy]
  resources :genres, only: %i[index show new edit update create destroy]
  resources :artists, only: %i[index show new edit update create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
