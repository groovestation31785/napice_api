require 'rails_helper'

RSpec.describe "Campaigns", type: :request do
  describe "GET /campaigns" do
    it "sends a list of campaigns" do
      get v1_campaigns_path
      expect(response).to have_http_status(200)
    end
  end
end
