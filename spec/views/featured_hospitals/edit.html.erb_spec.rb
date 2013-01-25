require 'spec_helper'

describe "featured_hospitals/edit" do
  before(:each) do
    @featured_hospital = assign(:featured_hospital, stub_model(FeaturedHospital,
      :payment => false,
      :hospital => nil
    ))
  end

  it "renders the edit featured_hospital form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => featured_hospitals_path(@featured_hospital), :method => "post" do
      assert_select "input#featured_hospital_payment", :name => "featured_hospital[payment]"
      assert_select "input#featured_hospital_hospital", :name => "featured_hospital[hospital]"
    end
  end
end
