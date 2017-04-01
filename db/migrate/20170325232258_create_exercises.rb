class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :user_id, default: nil
      t.boolean :approved, default: false
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
