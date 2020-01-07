class CreateTouristNativeLaunguages < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_native_launguages do |t|
      t.references :tourist, foreign_key: true
      t.string :tourist_language, null: false

      t.timestamps
    end
    add_index :tourist_native_launguages, :tourist_language
  end
end
