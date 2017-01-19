Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      resources :ping, only: [:index], constraints: { format: 'json' }
         mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
           resources :performance_data, only: [:create]
     end
   end
end
