require 'spec_helper'

describe "involvements/show" do
  before(:each) do
    @involvement = assign(:involvement, stub_model(Involvement,
      :allow_appointment => false,
      :price => 1.5,
      :hospital => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1.5/)
    rendered.should match(//)
  end
end
