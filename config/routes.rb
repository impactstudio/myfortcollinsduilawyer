Rails.application.routes.draw do
  resources :messages, only: [:new, :create]

  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/fort-collins-dui-lawyer', to: 'static#fort_collins_dui_lawyer'
  get '/fort-collins-criminal-justice-lawyer', to: 'static#fort_collins_criminal_justice_lawyer'
  get '/thank_you', to: 'static#thank_you'
end
