Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  root 'static_pages#home'
  get  '/message', to: 'static_pages#message'
  get  '/interview', to: 'static_pages#interview'
  get  '/photo', to: 'static_pages#photo'
  get  '/join', to: 'static_pages#join'
  get  '/event_manage', to: 'static_pages#event_manage'
  resources :events, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show]
end
