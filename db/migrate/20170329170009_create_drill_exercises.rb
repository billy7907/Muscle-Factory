class CreateDrillExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :drill_exercises do |t|
      t.references :drill, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
