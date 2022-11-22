Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'aboutus', to: 'pages#aboutus'
  get 'events', to: 'pages#events'
  get 'history', to: 'pages#history'
  get 'instructors', to: 'pages#instructors'
  get 'schools', to: 'pages#schools'

end
