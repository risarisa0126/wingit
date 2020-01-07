class CreateTouristNativeCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_native_countries do |t|
      t.references :tourist, foreign_key: true
      t.string :tourist_country, null: false

      t.timestamps
    end
    add_index :tourist_native_countries, :tourist_country
  end
end
