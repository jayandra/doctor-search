require 'spec_helper'

describe "featured_hospitals/new" do
  before(:each) do
    assign(:featured_hospital, stub_model(FeaturedHospital,
      :payment => false,
      :hospital => nil
    ).as_new_record)
  end

  it "renders new featured_hospital form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => featured_hospitals_path, :method => "post" do
      assert_select "input#featured_hospital_payment", :name => "featured_hospital[payment]"
      assert_select "input#featured_hospital_hospital", :name => "featured_hospital[hospital]"
    end
  end
end
