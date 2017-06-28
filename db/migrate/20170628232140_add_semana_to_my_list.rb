class AddSemanaToMyList < ActiveRecord::Migration
  def change
    add_column :my_lists, :semana, :string
  end
end
