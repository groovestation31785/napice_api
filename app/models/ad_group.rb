class AdGroup < ApplicationRecord
  has_many :expanded_text_ads
  belongs_to :campaign

  validates_presence_of :name, :status, :campaign_id
  validates_numericality_of :campaign_id
end
