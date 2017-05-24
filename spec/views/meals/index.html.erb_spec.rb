require 'rails_helper'

RSpec.describe "meals/index", type: :view do
  before(:each) do
    assign(:meals, [
      Meal.create!(
        :name => "Name",
        :foods => "Foods",
        :calories => 2.5,
        :description => "Description",
        :string => "String"
      ),
      Meal.create!(
        :name => "Name",
        :foods => "Foods",
        :calories => 2.5,
        :description => "Description",
        :string => "String"
      )
    ])
  end

  it "renders a list of meals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Foods".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
