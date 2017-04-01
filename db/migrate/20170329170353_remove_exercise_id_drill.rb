class RemoveExerciseIdDrill < ActiveRecord::Migration[5.0]
  def change
    remove_column :drills, :exercise_id
  end
end
