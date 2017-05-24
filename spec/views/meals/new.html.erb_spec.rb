require 'rails_helper'

RSpec.describe "meals/new", type: :view do
  before(:each) do
    assign(:meal, Meal.new(
      :name => "MyString",
      :foods => "MyString",
      :calories => 1.5,
      :description => "MyString"
    ))
  end

  it "renders new meal form" do
    render

    assert_select "form[action=?][method=?]", meals_path, "post" do

      assert_select "input#meal_name[name=?]", "meal[name]"

      assert_select "input#meal_foods[name=?]", "meal[foods]"

      assert_select "input#meal_calories[name=?]", "meal[calories]"

      assert_select "input#meal_description[name=?]", "meal[description]"
    end
  end
end
