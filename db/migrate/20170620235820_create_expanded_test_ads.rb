class CreateExpandedTestAds < ActiveRecord::Migration[5.0]
  def change
    create_table :expanded_test_ads do |t|
      t.string :xsi_type
      t.integer :ad_group_id
      t.string :headline_part1
      t.string :headline_part2
      t.string :description
      t.string :path1
      t.string :path2

      t.timestamps
    end
  end
end
