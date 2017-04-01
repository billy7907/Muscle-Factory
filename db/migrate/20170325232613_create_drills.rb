class CreateDrills < ActiveRecord::Migration[5.0]
  def change
    create_table :drills do |t|
      t.integer :sets
      t.integer :reps
      t.integer :day_id
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
