require 'rails_helper'

RSpec.describe ExpandedTextAd, type: :model do
  it { should belong_to(:ad_group) }
  it { should validate_presence_of(:xsi_type) }
  it { should validate_presence_of(:ad_group_id) }
  it { should validate_numericality_of(:ad_group_id) }
  it { should validate_presence_of(:headline_part1) }
  it { should validate_presence_of(:headline_part2) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:path1) }
  it { should validate_presence_of(:path2) }
end
