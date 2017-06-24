require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        :name => "Name",
        :address => "Address",
        :contact => "Contact",
        :user => nil
      ),
      Restaurant.create!(
        :name => "Name",
        :address => "Address",
        :contact => "Contact",
        :user => nil
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
