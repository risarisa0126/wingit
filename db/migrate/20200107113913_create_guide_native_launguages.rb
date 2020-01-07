class CreateGuideNativeLaunguages < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_native_launguages do |t|
      t.references :guide, foreign_key: true
      t.string :guide_language, null: false

      t.timestamps
    end
    add_index :guide_native_launguages, :guide_language
  end
end
