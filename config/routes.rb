Rails.application.routes.draw do
  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :expanded_test_ads
        resources :ad_groups
        resources :campaigns
      end
    end
  end
end
