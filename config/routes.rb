Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :products
  get '/exception', to: 'exception#index'
  root 'welcome#index'
end
