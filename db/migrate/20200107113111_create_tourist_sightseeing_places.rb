class CreateTouristSightseeingPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_sightseeing_places do |t|
      t.references :tourist, foreign_key: true
      t.string :sightseeing_place, null: false

      t.timestamps
    end
    add_index :tourist_sightseeing_places, :sightseeing_place
  end
end
