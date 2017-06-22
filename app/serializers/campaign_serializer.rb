class CampaignSerializer < ActiveModel::Serializer
  has_many :ad_groups
  attributes :id, :name, :status, :budget, :advertising_channel_type
end
