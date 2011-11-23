require 'spec_helper'

describe "udids/show.html.erb" do
  before(:each) do
    @udid = assign(:udid, stub_model(Udid,
      :name => "Name",
      :udid => "Udid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Udid/)
  end
end
