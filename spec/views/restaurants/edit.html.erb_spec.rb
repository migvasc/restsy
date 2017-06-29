require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :address => "MyString",
      :contact => "MyString",
      :user => nil
    ))
  end

#  it "renders the edit restaurant form" do
 #   render

  #  assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

   #   assert_select "input#restaurant_name[name=?]", "restaurant[name]"

    #  assert_select "input#restaurant_address[name=?]", "restaurant[address]"

     # assert_select "input#restaurant_contact[name=?]", "restaurant[contact]"

      #assert_select "input#restaurant_user_id[name=?]", "restaurant[user_id]"
  #  end
#  end
end
