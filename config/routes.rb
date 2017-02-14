Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  resources :messages, only: [:create]
  resources :duis, path: "fort-collins-dui-lawyer", only: [:show, :edit, :update, :new, :create, :destroy]
  resources :criminal_defenses, path: "fort-collins-criminal-defense-lawyer", only: [:show, :edit, :update, :new, :create, :destroy]

  root 'static#home'
  get '/firm-overview', to: 'static#firm_overview'
  get '/eric-a-sunness', to: 'static#eric_sunness'
  get '/contact', to: 'static#contact'
  get '/dui', to: 'duis#index'
  get '/criminal-defense', to: 'criminal_defenses#index'
  get '/fort-collins-dui-lawyer', to: 'static#fort_collins_dui_lawyer'
  get '/fort-collins-criminal-defense-lawyer',
      to: 'static#fort_collins_criminal_defense_lawyer'
  get '/thank_you', to: 'static#thank_you'
  get '/case-results', to: 'static#case_results'
  get '/privacy-policy', to: 'static#privacy_policy'
end
