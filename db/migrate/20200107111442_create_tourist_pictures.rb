class CreateTouristPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :tourist_pictures do |t|
      t.references :tourist, foreign_key: true
      t.string :picture_id

      t.timestamps
    end
  end
end
