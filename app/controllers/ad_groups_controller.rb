class AdGroupsController < ApplicationController
  before_action :set_ad_group, only: [:show, :update, :destroy]

  # GET /ad_groups
  def index
    @ad_groups = AdGroup.all

    render json: @ad_groups
  end

  # GET /ad_groups/1
  def show
    render json: @ad_group
  end

  # POST /ad_groups
  def create
    @ad_group = AdGroup.new(ad_group_params)

    if @ad_group.save
      render json: @ad_group, status: :created, location: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ad_groups/1
  def update
    if @ad_group.update(ad_group_params)
      render json: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ad_groups/1
  def destroy
    @ad_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_group
      @ad_group = AdGroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ad_group_params
      params.require(:ad_group).permit(:name, :status, :campaign_id)
    end
end
