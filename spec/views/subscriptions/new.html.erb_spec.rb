require 'rails_helper'

RSpec.describe "subscriptions/new", type: :view do
  before(:each) do
    assign(:subscription, Subscription.new(
      :customer => nil,
      :menu => nil,
      :active => false
    ))
  end

  it "renders new subscription form" do
    render

    assert_select "form[action=?][method=?]", subscriptions_path, "post" do

      assert_select "input#subscription_customer_id[name=?]", "subscription[customer_id]"

      assert_select "input#subscription_menu_id[name=?]", "subscription[menu_id]"

      assert_select "input#subscription_active[name=?]", "subscription[active]"
    end
  end
end
