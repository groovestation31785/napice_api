class ExpandedTextAdSerializer < ActiveModel::Serializer
  attributes :id, :xsi_type, :ad_group_id, :headline_part1, :headline_part2, :description, :path1, :path2
end
