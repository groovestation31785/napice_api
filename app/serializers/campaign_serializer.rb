class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :budget, :advertising_channel_type
end
