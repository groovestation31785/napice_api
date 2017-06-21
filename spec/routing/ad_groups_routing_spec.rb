require "rails_helper"

RSpec.describe AdGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ad_groups").to route_to("ad_groups#index")
    end


    it "routes to #show" do
      expect(:get => "/ad_groups/1").to route_to("ad_groups#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ad_groups").to route_to("ad_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ad_groups/1").to route_to("ad_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ad_groups/1").to route_to("ad_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ad_groups/1").to route_to("ad_groups#destroy", :id => "1")
    end

  end
end
