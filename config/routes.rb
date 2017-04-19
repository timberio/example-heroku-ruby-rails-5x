Rails.application.routes.draw do
  resources :products
  get '/exception', to: 'exception#index'
  root 'welcome#index'
end
