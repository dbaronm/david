Rails.application.routes.draw do
  root to: 'pages#x'
  get 'pages/x'
  get 'pages/landing'
  post 'pages/x', action: 'guardar_registro', controller: 'pages', as: 'algo'
end