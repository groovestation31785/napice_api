require 'rails_helper'

RSpec.describe Campaign, type: :model do
  it { should have_many(:ad_groups) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:budget) }
  it { should validate_presence_of(:advertising_channel_type) }
end
