Rails.application.routes.draw do
  root to: 'pages#x'
  get 'pages/x'
  post 'pages/x', action: 'guardar_registro', controller: 'pages', as: 'algo'
end