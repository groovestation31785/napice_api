require 'rails_helper'

RSpec.describe "AdGroups API", type: :request do
  let!(:ad_group) { create(:ad_group) }

  describe "GET /ad_groups" do
    before { get '/api/v1/ad_groups' }

    it "sends a list of ad groups" do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it "returns status code of 200" do
      expect(response).to have_http_status(200)
    end
  end
end
