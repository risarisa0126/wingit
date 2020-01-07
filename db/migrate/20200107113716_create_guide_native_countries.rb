class CreateGuideNativeCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_native_countries do |t|
      t.references :guide, foreign_key: true
      t.string :guide_country, null: false

      t.timestamps
    end
    add_index :guide_native_countries, :guide_country
  end
end
