Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  unauthenticated :user do
    root to: 'devise/registrations#new', as: :unauthenticated_root
  end

end
