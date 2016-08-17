Rails.application.routes.draw do
  get 'messages/new'

  root 'static#home'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/fort-collins-dui-lawyer', to: 'static#fort_collins_dui_lawyer'
  get '/fort-collins-criminal-justice-lawyer', to: 'static#fort_collins_criminal_justice_lawyer'
end
