Rails.application.routes.draw do
  resources :requests
  resources :documents
  resources :recruit_infos
  devise_for :users,
  			controllers: {
  				sessions: "users/sessions",
  				registrations: "users/registrations"
  			}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
