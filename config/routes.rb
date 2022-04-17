Rails.application.routes.draw do

  root to: "home#index"
  post "import_file", to: "populate#import_file"
  resources :deputies, only: %i[index show]
end
