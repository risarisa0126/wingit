class RemoveDaysofweekFromGuides < ActiveRecord::Migration[5.2]
  def change
    remove_column :guides, :daysofweek, :datetime
  end
end
