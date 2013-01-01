require 'spec_helper'

describe "hospitals/index" do
  before(:each) do
    assign(:hospitals, [
      stub_model(Hospital,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :image => "Image",
        :description => "Description"
      ),
      stub_model(Hospital,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :image => "Image",
        :description => "Description"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
