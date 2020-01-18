class ChangeIsGuideOfMessages < ActiveRecord::Migration[5.2]
  def up
    change_column :messages, :is_guide, :boolean, default: 'true'
  end

  def down
    change_column :messages, :is_guide, :boolean
  end
end
