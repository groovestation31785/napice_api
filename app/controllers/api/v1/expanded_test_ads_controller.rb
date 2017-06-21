class ExpandedTestAdsController < ApplicationController
  before_action :set_expanded_test_ad, only: [:show, :update, :destroy]

  def index
    @expanded_test_ads = ExpandedTestAd.all

    render json: @expanded_test_ads
  end

  def show
    render json: @expanded_test_ad
  end

  def create
    @expanded_test_ad = ExpandedTestAd.new(expanded_test_ad_params)

    if @expanded_test_ad.save
      render json: @expanded_test_ad, status: :created, location: @expanded_test_ad
    else
      render json: @expanded_test_ad.errors, status: :unprocessable_entity
    end
  end

  def update
    if @expanded_test_ad.update(expanded_test_ad_params)
      render json: @expanded_test_ad
    else
      render json: @expanded_test_ad.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @expanded_test_ad.destroy
  end

  private
    def set_expanded_test_ad
      @expanded_test_ad = ExpandedTestAd.find(params[:id])
    end

    def expanded_test_ad_params
      params.require(:expanded_test_ad).permit(:xsi_type, :ad_group_id, :headline_part1, :headline_part2, :description, :path1, :path2)
    end
end
