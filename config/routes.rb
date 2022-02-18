Rails.application.routes.draw do
  resources :lists, only: %i[index show] do
    resources :bookmarks, only: %i[new create]
  end
end
