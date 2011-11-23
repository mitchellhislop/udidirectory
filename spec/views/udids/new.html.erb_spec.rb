require 'spec_helper'

describe "udids/new.html.erb" do
  before(:each) do
    assign(:udid, stub_model(Udid,
      :name => "MyString",
      :udid => "MyString"
    ).as_new_record)
  end

  it "renders new udid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => udids_path, :method => "post" do
      assert_select "input#udid_name", :name => "udid[name]"
      assert_select "input#udid_udid", :name => "udid[udid]"
    end
  end
end
