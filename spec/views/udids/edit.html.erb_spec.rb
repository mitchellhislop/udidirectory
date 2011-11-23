require 'spec_helper'

describe "udids/edit.html.erb" do
  before(:each) do
    @udid = assign(:udid, stub_model(Udid,
      :name => "MyString",
      :udid => "MyString"
    ))
  end

  it "renders the edit udid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => udids_path(@udid), :method => "post" do
      assert_select "input#udid_name", :name => "udid[name]"
      assert_select "input#udid_udid", :name => "udid[udid]"
    end
  end
end
