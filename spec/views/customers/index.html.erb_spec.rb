require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        
      ),
      Customer.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        
      )
    ])
  end

 # it "renders a list of customers" do
 #   render
  #  assert_select "tr>td", :text => "Name".to_s, :count => 2
   # assert_select "tr>td", :text => "Address".to_s, :count => 2
  #  assert_select "tr>td", :text => "Phone".to_s, :count => 2
    
#  end
end
