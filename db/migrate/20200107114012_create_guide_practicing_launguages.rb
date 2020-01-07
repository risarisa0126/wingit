class CreateGuidePracticingLaunguages < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_practicing_launguages do |t|
      t.references :guide, foreign_key: true
      t.string :guide_practicing, null: false

      t.timestamps
    end
    add_index :guide_practicing_launguages, :guide_practicing
  end
end
