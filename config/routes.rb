Rails.application.routes.draw do
  resources :duis
  resources :messages, only: [:create]

  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/fort-collins-dui-lawyer', to: 'static#fort_collins_dui_lawyer'
  get '/fort-collins-criminal-defense-lawyer',
      to: 'static#fort_collins_criminal_defense_lawyer'
  get '/thank_you', to: 'static#thank_you'
  get '/case-results', to: 'static#case_results'
  get '/privacy-policy', to: 'static#privacy_policy'
end
