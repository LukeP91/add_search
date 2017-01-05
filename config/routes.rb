Rails.application.routes.draw do
  root 'welcome#home'

  resources :board_games, only: [:show, :index] do
    collection do
      get 'search'
    end
  end
  resources :categories, only: [:index]
end
