require 'spec_helper'

describe "udids/index.html.erb" do
  before(:each) do
    assign(:udids, [
      stub_model(Udid,
        :name => "Name",
        :udid => "Udid"
      ),
      stub_model(Udid,
        :name => "Name",
        :udid => "Udid"
      )
    ])
  end

  it "renders a list of udids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Udid".to_s, :count => 2
  end
end
