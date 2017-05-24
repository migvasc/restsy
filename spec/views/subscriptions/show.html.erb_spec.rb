require 'rails_helper'

RSpec.describe "subscriptions/show", type: :view do
  before(:each) do
    @subscription = assign(:subscription, Subscription.create!(
      :customer => nil,
      :menu => nil,
      :active => "Active",
      :boolean => "Boolean"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Active/)
    expect(rendered).to match(/Boolean/)
  end
end
