class AddRestToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :rest, :boolean
  end
end
