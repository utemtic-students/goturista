Rails.application.routes.draw do

  get 'company/business'

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'questions/question'  
  root 'welcome#index'
  get 'turist/index'
  resources :sites do
    resources :photos
  end
end