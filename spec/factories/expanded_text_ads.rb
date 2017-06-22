FactoryGirl.define do
  factory :expanded_text_ad do
    xsi_type "ExpandedTextAd"
    ad_group
    headline_part1 "Developers from Mars"
    headline_part2 ""
    description "Buy your tickets now!"
    path1 "all-inclusive"
    path2 "deals"
  end
end
