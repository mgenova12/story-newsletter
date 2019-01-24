Rails.application.routes.draw do

  resources :stories
  resources :newsletters, only: [:index, :show]

end
