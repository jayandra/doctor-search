require 'spec_helper'

describe "involvements/index" do
  before(:each) do
    assign(:involvements, [
      stub_model(Involvement,
        :allow_appointment => false,
        :price => 1.5,
        :hospital => nil
      ),
      stub_model(Involvement,
        :allow_appointment => false,
        :price => 1.5,
        :hospital => nil
      )
    ])
  end

  it "renders a list of involvements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
