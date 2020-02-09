Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  namespace :v1, defaults: { format: 'json'} do
    get 'weather', to: 'weather_plan#index'
  end
end
