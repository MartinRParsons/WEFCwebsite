Rails.application.routes.draw do
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  get '/calendar', to: 'pages#cal'
  get '/calendar/:month', to: 'pages#cal', as: 'calender_month'
  get '/calendar/:month/:year', to: 'pages#cal', as: 'calendar_month_year'
  
end