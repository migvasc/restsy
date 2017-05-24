require 'rails_helper'

RSpec.describe "menu_x_meals/new", type: :view do
  before(:each) do
    assign(:menu_x_meal, MenuXMeal.new(
      :menu => nil,
      :meal => nil,
      :periodo => "MyString"
    ))
  end

  it "renders new menu_x_meal form" do
    render

    assert_select "form[action=?][method=?]", menu_x_meals_path, "post" do

      assert_select "input#menu_x_meal_menu_id[name=?]", "menu_x_meal[menu_id]"

      assert_select "input#menu_x_meal_meal_id[name=?]", "menu_x_meal[meal_id]"

      assert_select "input#menu_x_meal_periodo[name=?]", "menu_x_meal[periodo]"
    end
  end
end
