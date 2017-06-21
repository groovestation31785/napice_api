class AdGroupsController < ApplicationController
  before_action :set_ad_group, only: [:show, :update, :destroy]

  def index
    @ad_groups = AdGroup.all

    render json: @ad_groups
  end

  def show
    render json: @ad_group
  end

  def create
    @ad_group = AdGroup.new(ad_group_params)

    if @ad_group.save
      render json: @ad_group, status: :created, location: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ad_group.update(ad_group_params)
      render json: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ad_group.destroy
  end

  private
    def set_ad_group
      @ad_group = AdGroup.find(params[:id])
    end

    def ad_group_params
      params.require(:ad_group).permit(:name, :status, :campaign_id)
    end
end
