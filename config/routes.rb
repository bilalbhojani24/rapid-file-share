Rails.application.routes.draw do
  root 'document#index'
  devise_for :users, controllers: { registrations: "registrations" }
  resources :document, except: [:edit, :new]
  get "/document/download/:id/:key", to: "document#download"
  get "/document/shared-download/:id/:key", to: "document#sharedDownload"
end
