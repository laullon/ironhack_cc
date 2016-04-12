class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :url
      t.string :unit
      t.string :bootcamp_id

      t.timestamps null: false
    end
  end
end
