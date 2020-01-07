class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :tourist, foreign_key: true
      t.references :guide, foreign_key: true
      t.text :comment, null: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
