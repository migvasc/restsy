require 'rails_helper'

RSpec.describe "menu_x_meals/show", type: :view do
  before(:each) do
    @menu_x_meal = assign(:menu_x_meal, MenuXMeal.create!(
      :menu => nil,
      :meal => nil,
      :periodo => "Periodo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Periodo/)
  end
end
