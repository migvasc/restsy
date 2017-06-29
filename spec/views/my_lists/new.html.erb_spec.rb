require 'rails_helper'

RSpec.describe "my_lists/new", type: :view do
  before(:each) do
    assign(:my_list, MyList.new(
      :user => nil,
      :query => "MyString"
    ))
  end

#  it "renders new my_list form" do
 #   render
#
 #   assert_select "form[action=?][method=?]", my_lists_path, "post" do
#
 #     assert_select "input#my_list_user_id[name=?]", "my_list[user_id]"

  #    assert_select "input#my_list_query[name=?]", "my_list[query]"
   # end
#  end
end
