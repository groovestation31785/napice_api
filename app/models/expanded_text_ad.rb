class ExpandedTextAd < ApplicationRecord
  belongs_to :ad_group

  validates_presence_of :xsi_type, :ad_group_id, :headline_part1, :headline_part2, :description, :path1, :path2
  validates_numericality_of :ad_group_id
end
