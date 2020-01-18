class CreateDayofweeks < ActiveRecord::Migration[5.2]
  def change
    create_table :dayofweeks do |t|
      t.references :guide, foreign_key: true
      t.datetime :day

      t.timestamps
    end
  end
end
