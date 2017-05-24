require 'rails_helper'

RSpec.describe "meals/show", type: :view do
  before(:each) do
    @meal = assign(:meal, Meal.create!(
      :name => "Name",
      :foods => "Foods",
      :calories => 2.5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Foods/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
  end
end
