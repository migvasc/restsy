class AddPeriodoToMyList < ActiveRecord::Migration
  def change
    add_column :my_lists, :periodo, :string
  end
end
