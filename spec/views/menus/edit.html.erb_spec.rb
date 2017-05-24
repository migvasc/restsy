require 'rails_helper'

RSpec.describe "menus/edit", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(
      :name => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do

      assert_select "input#menu_name[name=?]", "menu[name]"

      assert_select "input#menu_customer_id[name=?]", "menu[customer_id]"
    end
  end
end
