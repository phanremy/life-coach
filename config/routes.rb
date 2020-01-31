Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dance_calendars do
    resources :dance_dates, only: [:create]
  end

  resources :diary_dates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
