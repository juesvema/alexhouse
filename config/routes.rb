Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  
  resources :notis
  
  get 'cocina', to: "cocina#index"

  get 'uniformes', to: "uniformes#index"

  get 'spa', to: "spa#index"

  get 'publicidad', to: "publicidad#index"

  get 'restaurantes', to: "restaurantes#index"

  get 'viajes', to: "viajes#index"

  get 'outsourcing', to: "outsourcing#index"

  get 'zapateria', to: "zapateria#index"

  get 'idiomas', to: "idiomas#index"

  get 'hoteles', to: "hoteles#index"

  get 'welcome/index'
  
  root 'welcome#index'
  end
end
