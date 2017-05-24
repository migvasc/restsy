require 'rails_helper'

RSpec.describe "subscriptions/edit", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :customer => nil,
      :menu => nil,
      :active => false
    ))
  end

  it "renders the edit subscription form" do
    render

    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do

      assert_select "input#subscription_customer_id[name=?]", "subscription[customer_id]"

      assert_select "input#subscription_menu_id[name=?]", "subscription[menu_id]"

      assert_select "input#subscription_active[name=?]", "subscription[active]"
    end
  end
end
