class CreateTouristPracticingLaunguages < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_practicing_launguages do |t|
      t.references :tourist, foreign_key: true
      t.string :tourist_practicing, null: false

      t.timestamps
    end
    add_index :tourist_practicing_launguages, :tourist_practicing
  end
end
