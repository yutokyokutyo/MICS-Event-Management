Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/message', to: 'static_pages#message'
  get  '/interview', to: 'static_pages#interview'
  get  '/photo', to: 'static_pages#photo'
  get  '/join', to: 'static_pages#join'
  resources :events, only: [:create, :edit, :update, :destroy]
end
