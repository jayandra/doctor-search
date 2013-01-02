require 'spec_helper'

describe "doctors/index" do
  before(:each) do
    assign(:doctors, [
      stub_model(Doctor,
        :checkup_time => 1.5,
        :email => "Email",
        :message => "MyText",
        :mobile1 => "Mobile1",
        :mobile2 => "Mobile2",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :primary_involvement => 1,
        :name => "Name",
        :department => nil
      ),
      stub_model(Doctor,
        :checkup_time => 1.5,
        :email => "Email",
        :message => "MyText",
        :mobile1 => "Mobile1",
        :mobile2 => "Mobile2",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :primary_involvement => 1,
        :name => "Name",
        :department => nil
      )
    ])
  end

  it "renders a list of doctors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile1".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile2".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
