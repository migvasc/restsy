class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true
      t.boolean :active

      t.timestamps null: false
    end
  end
end
