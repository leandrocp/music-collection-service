Rails.application.routes.draw do
  resources :artists do
    resources :albums do
      resources :songs
    end
  end
end
