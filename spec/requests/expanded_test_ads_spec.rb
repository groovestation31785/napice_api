require 'rails_helper'

RSpec.describe "ExpandedTestAds", type: :request do
  describe "GET /expanded_test_ads" do
    it "works! (now write some real specs)" do
      get expanded_test_ads_path
      expect(response).to have_http_status(200)
    end
  end
end
