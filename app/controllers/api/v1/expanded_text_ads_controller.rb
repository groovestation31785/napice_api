class ExpandedTextAdsController < ApplicationController
  before_action :set_expanded_text_ad, only: [:show, :update, :destroy]

  def index
    @expanded_text_ads = ExpandedTextAd.all

    render json: @expanded_text_ads
  end

  def show
    render json: @expanded_text_ad
  end

  def create
    @expanded_text_ad = ExpandedTextAd.new(expanded_text_ad_params)

    if @expanded_text_ad.save
      render json: @expanded_text_ad, status: :created, location: @expanded_text_ad
    else
      render json: @expanded_text_ad.errors, status: :unprocessable_entity
    end
  end

  def update
    if @expanded_text_ad.update(expanded_text_ad_params)
      render json: @expanded_text_ad
    else
      render json: @expanded_text_ad.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @expanded_text_ad.destroy
  end

  private
    def set_expanded_text_ad
      @expanded_text_ad = ExpandedTextAd.find(params[:id])
    end

    def expanded_text_ad_params
      params.require(:expanded_text_ad).permit(:xsi_type, :ad_group_id, :headline_part1, :headline_part2, :description, :path1, :path2)
    end
end
