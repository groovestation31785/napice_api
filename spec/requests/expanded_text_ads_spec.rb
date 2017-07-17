require 'rails_helper'

RSpec.describe "ExpandedTextAds API", type: :request do
  let!(:expanded_text_ad) { create(:expanded_text_ad) }
  let(:expanded_text_ad_id) { expanded_text_ad.id }

  describe "GET /expanded_text_ads" do
    before { get '/api/v1/expanded_text_ads' }

    it "sends a list of expanded text ads" do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it "returns status code of 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /expanded_text_ads/:id" do
    before { get "/api/v1/expanded_text_ads/#{expanded_text_ad_id}" }

    context "when the record exists" do
      it "returns the expanded text ad" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(expanded_text_ad_id)
      end

      it "returns status code of 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exist" do
      let(:expanded_text_ad_id) { 5000 }
      it "returns status code of 404" do
        expect(response).to have_http_status(404)
      end
    end
  end
end
