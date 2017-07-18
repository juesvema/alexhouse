Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  resources :hoteles
  resources :notis
  resources :zapateria
  resources :idiomas
  
  get 'search', to: "search#index"
  
  get 'kontakto', to: "kontakto#index"
  
  get 'cocina', to: "cocina#index"

  get 'uniformes', to: "uniformes#index"

  get 'spa', to: "spa#index"

  get 'publicidad', to: "publicidad#index"

  get 'restaurantes', to: "restaurantes#index"

  get 'viajes', to: "viajes#index"

  get 'outsourcing', to: "outsourcing#index"

  get 'welcome/index'
  
  root 'welcome#index'
  end
end
