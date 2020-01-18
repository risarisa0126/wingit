class AddIsGuideToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :is_guide, :boolean
  end
end
