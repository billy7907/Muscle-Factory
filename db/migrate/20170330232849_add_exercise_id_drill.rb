class AddExerciseIdDrill < ActiveRecord::Migration[5.0]
  def change
    add_column :drills, :exercise_id, :integer
  end
end
