class CreateMyLists < ActiveRecord::Migration
  def change
    create_table :my_lists do |t|
      t.references :user, index: true, foreign_key: true
      t.string :query

      t.timestamps null: false
    end
  end
end
