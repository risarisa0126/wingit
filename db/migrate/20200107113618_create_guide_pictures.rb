class CreateGuidePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_pictures do |t|
      t.references :guide, foreign_key: true
      t.string :guide_no_picture_id

      t.timestamps
    end
  end
end
