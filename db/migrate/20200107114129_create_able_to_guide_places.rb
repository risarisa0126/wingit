class CreateAbleToGuidePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :able_to_guide_places do |t|
      t.references :guide, foreign_key: true
      t.string :guide_place, null: false

      t.timestamps
    end
    add_index :able_to_guide_places, :guide_place
  end
end
