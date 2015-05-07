Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects do
    get 'summary', on: :collection
  end
end
