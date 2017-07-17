require 'rails_helper'

RSpec.describe "AdGroups API", type: :request do
  let!(:ad_group) { create(:ad_group) }
  let(:ad_group_id) { ad_group.id }

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

  describe "GET /ad_groups/:id" do
    before { get "/api/v1/ad_groups/#{ad_groups_id}" }

    context "when the record exists" do
      it "returns the ad group" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(ad_group_id)
      end

      it "returns status code of 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exist" do
      let(:ad_group_id) { 5000 }
      it "returns status code of 404" do
        expect(response).to have_http_status(404)
      end
    end
  end
end
