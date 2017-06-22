module Api::V1
  class CampaignsController < ApiController
    before_action :set_campaign, only: [:show, :update, :destroy]

    def index
      @campaigns = Campaign.all
      render json: @campaigns
    end

    def show
      if @campaign
        render json: @campaign
      else
        render status: 404
      end
    end

    def create
      @campaign = Campaign.new(campaign_params)

      if @campaign.save
        render json: @campaign, status: :created, location: @campaign
      else
        render json: @campaign.errors, status: :unprocessable_entity
      end
    end

    def update
      if @campaign.update(campaign_params)
        render json: @campaign
      else
        render json: @campaign.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @campaign.destroy
    end

    private
      def set_campaign
        @campaign = Campaign.find_by_id(params[:id])
      end

      def campaign_params
        params.require(:campaign).permit(:name, :status, :budget, :advertising_channel_type)
      end
  end
end
