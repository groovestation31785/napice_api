require 'rails_helper'

RSpec.describe CampaignsController, type: :controller do

  let(:valid_attributes) {  }

  let(:invalid_attributes) {  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CampaignsController. Be sure to keep this updated too.
  # let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      campaign = Campaign.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      campaign = Campaign.create! valid_attributes
      get :show, params: {id: campaign.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Campaign" do
        expect {
          post :create, params: {campaign: valid_attributes}, session: valid_session
        }.to change(Campaign, :count).by(1)
      end

      it "renders a JSON response with the new campaign" do

        post :create, params: {campaign: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(campaign_url(Campaign.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new campaign" do

        post :create, params: {campaign: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested campaign" do
        campaign = Campaign.create! valid_attributes
        put :update, params: {id: campaign.to_param, campaign: new_attributes}, session: valid_session
        campaign.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the campaign" do
        campaign = Campaign.create! valid_attributes

        put :update, params: {id: campaign.to_param, campaign: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the campaign" do
        campaign = Campaign.create! valid_attributes

        put :update, params: {id: campaign.to_param, campaign: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested campaign" do
      campaign = Campaign.create! valid_attributes
      expect {
        delete :destroy, params: {id: campaign.to_param}, session: valid_session
      }.to change(Campaign, :count).by(-1)
    end
  end

end
