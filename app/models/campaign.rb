class Campaign < ApplicationRecord
  has_many :ad_groups

  validates_presence_of :name, :status, :budget, :advertising_channel_type
end
