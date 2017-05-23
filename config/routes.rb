Rails.application.routes.draw do
  root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/message'
  get  'static_pages/interview'
  get  'static_pages/photo'
  get  'static_pages/join'
end
