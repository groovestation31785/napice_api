require 'rails_helper'

RSpec.describe AdGroup, type: :model do
  it { should have_many(:expanded_text_ads) }
  it { should belong_to(:campaign) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:campaign_id) }
  it { should validate_numericality_of(:campaign_id) }
end
