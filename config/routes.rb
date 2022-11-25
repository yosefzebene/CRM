Rails.application.routes.draw do
  root 'customers#index'
  get 'customers/alphabetized'
  get 'customers/missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
