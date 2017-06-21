require 'rails_helper'

RSpec.describe "Campaigns API", type: :request do
  let!(:campaign) { create(:campaign) }

  describe "GET /campaigns" do
    before { get '/api/v1/campaigns' }

    it "sends a list of campaigns" do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(200)
    end
  end
end
