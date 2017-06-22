require 'rails_helper'

RSpec.describe "Campaigns API", type: :request do
  let!(:campaign) { create(:campaign) }
  let(:campaign_id) { campaign.id }

  describe "GET /campaigns" do
    before { get '/api/v1/campaigns' }

    it "sends a list of campaigns" do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it "returns status code of 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /campaigns/:id" do
    context "when the record exists" do
      it "returns the campaign" do
        get "/api/v1/campaigns/#{campaign_id}"
        expect(json).not_to be_empty
        expect(json["id"]).to eq(campaign_id)
      end

      it "returns status code of 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exist" do
      let(:campaign_id) { 1000 }
      it "returns status code of 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a 'not found' message" do
        expect(response.body).to match(/Couldn't find Campaign/)
      end
    end
  end
end
