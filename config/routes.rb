Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'test/view', to: 'test#view'
  get 'json', to: 'json#index'
  get 'json/view', to: 'json#view'

end
