class AdGroupSerializer < ActiveModel::Serializer
  has_many :expanded_text_ads
  belongs_to :campaign
  attributes :id, :name, :status, :campaign_id
end
