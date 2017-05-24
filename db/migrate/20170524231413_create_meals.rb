class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :foods
      t.float :calories
      t.string :description

      t.timestamps null: false
    end
  end
end
