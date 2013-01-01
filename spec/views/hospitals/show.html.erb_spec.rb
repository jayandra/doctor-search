require 'spec_helper'

describe "hospitals/show" do
  before(:each) do
    @hospital = assign(:hospital, stub_model(Hospital,
      :name => "Name",
      :address => "Address",
      :city => "City",
      :phone1 => "Phone1",
      :phone2 => "Phone2",
      :image => "Image",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Image/)
    rendered.should match(/Description/)
  end
end
