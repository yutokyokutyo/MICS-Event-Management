Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/message', to: 'static_pages#message'
  get  '/interview', to: 'static_pages#interview'
  get  '/photo', to: 'static_pages#photo'
  get  '/join', to: 'static_pages#join'
  get  '/event_new',  to: 'events#new'
  resources :events, only: [:new, :create, :edit, :update, :destroy]
end
