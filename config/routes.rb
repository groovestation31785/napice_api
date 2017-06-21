Rails.application.routes.draw do
  resources :expanded_test_ads
  resources :ad_groups
  resources :campaigns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
