require "rails_helper"

RSpec.describe ExpandedTestAdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/expanded_test_ads").to route_to("expanded_test_ads#index")
    end


    it "routes to #show" do
      expect(:get => "/expanded_test_ads/1").to route_to("expanded_test_ads#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/expanded_test_ads").to route_to("expanded_test_ads#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/expanded_test_ads/1").to route_to("expanded_test_ads#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/expanded_test_ads/1").to route_to("expanded_test_ads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/expanded_test_ads/1").to route_to("expanded_test_ads#destroy", :id => "1")
    end

  end
end
