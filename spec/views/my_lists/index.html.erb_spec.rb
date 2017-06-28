require 'rails_helper'

RSpec.describe "my_lists/index", type: :view do
  before(:each) do
    assign(:my_lists, [
      MyList.create!(
        :user => nil,
        :query => "Query"
      ),
      MyList.create!(
        :user => nil,
        :query => "Query"
      )
    ])
  end

  it "renders a list of my_lists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Query".to_s, :count => 2
  end
end
