require 'spec_helper'

describe "featured_hospitals/show" do
  before(:each) do
    @featured_hospital = assign(:featured_hospital, stub_model(FeaturedHospital,
      :payment => false,
      :hospital => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
