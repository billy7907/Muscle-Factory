class DropDrillExercises < ActiveRecord::Migration[5.0]
  def change
    drop_table :drill_exercises
  end
end
