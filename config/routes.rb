Rails.application.routes.draw do
  devise_for :users

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }

  devise_scope(:user) do
    get('users/checkout_login', to: 'users/registrations#checkout_login', as: 'checkout_login')
    get '/auth/failure', to: 'users/omniauth_callbacks#failure', as: 'oauth_failure'
  end
end
