class AdGroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :campaign_id
end
