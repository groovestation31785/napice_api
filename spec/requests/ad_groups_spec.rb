require 'rails_helper'

RSpec.describe "AdGroups", type: :request do
  describe "GET /ad_groups" do
    it "works! (now write some real specs)" do
      get ad_groups_path
      expect(response).to have_http_status(200)
    end
  end
end