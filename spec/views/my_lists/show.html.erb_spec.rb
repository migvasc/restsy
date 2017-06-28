require 'rails_helper'

RSpec.describe "my_lists/show", type: :view do
  before(:each) do
    @my_list = assign(:my_list, MyList.create!(
      :user => nil,
      :query => "Query"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Query/)
  end
end
