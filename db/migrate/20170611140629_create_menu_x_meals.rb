class CreateMenuXMeals < ActiveRecord::Migration
  def change
    create_table :menu_x_meals do |t|
      t.references :menu, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true
      t.string :periodo

      t.timestamps null: false
    end
  end
end
