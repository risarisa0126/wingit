class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :tourist, foreign_key: true
      t.references :guide, foreign_key: true

      t.timestamps
    end
  end
end
