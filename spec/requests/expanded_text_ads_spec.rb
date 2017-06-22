require 'rails_helper'

RSpec.describe "ExpandedTextAds API", type: :request do
  let!(:expanded_text_ad) { create(:expanded_text_ad) }

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
end
