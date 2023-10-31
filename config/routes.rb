Rails.application.routes.draw do
  root "homes#home_page"
  get 'contact_us/new', to: 'contact_us#new'
  post 'submit_contact_us', to: 'contact_us#submit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
