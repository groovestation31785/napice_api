require "rails_helper"

RSpec.describe ExpandedTestAdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/v1/expanded_text_ads").to route_to("expanded_text_ads#index")
    end


    it "routes to #show" do
      expect(:get => "/api/v1/expanded_text_ads/1").to route_to("expanded_text_ads#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/api/v1/expanded_text_ads").to route_to("expanded_text_ads#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/v1/expanded_text_ads/1").to route_to("expanded_text_ads#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/v1/expanded_text_ads/1").to route_to("expanded_text_ads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/v1/expanded_text_ads/1").to route_to("expanded_text_ads#destroy", :id => "1")
    end

  end
end
