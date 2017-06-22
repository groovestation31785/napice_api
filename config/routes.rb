Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :expanded_text_ads
        resources :ad_groups
        resources :campaigns
      end
    end
end
