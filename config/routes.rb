Rails.application.routes.draw do
  root 'homepage#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }

  #devise_scope(:user) do
  #  get('users/checkout_login', to: 'users/registrations#checkout_login', as: 'checkout_login')
  #  get '/auth/failure', to: 'users/omniauth_callbacks#failure', as: 'oauth_failure'
  #end

  get '/viktor', to: 'homepage#index', as: 'viktor'
end
