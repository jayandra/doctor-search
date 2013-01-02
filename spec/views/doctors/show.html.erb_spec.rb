require 'spec_helper'

describe "doctors/show" do
  before(:each) do
    @doctor = assign(:doctor, stub_model(Doctor,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/Mobile1/)
    rendered.should match(/Mobile2/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
