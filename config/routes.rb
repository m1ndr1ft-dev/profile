Rails.application.routes.draw do

  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]

  get 'welcome/index'
  root 'welcome#index'

  # Redirects to home_page
  get '*path' => redirect('/')

end
