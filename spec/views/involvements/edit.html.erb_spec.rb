require 'spec_helper'

describe "involvements/edit" do
  before(:each) do
    @involvement = assign(:involvement, stub_model(Involvement,
      :allow_appointment => false,
      :price => 1.5,
      :hospital => nil
    ))
  end

  it "renders the edit involvement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => involvements_path(@involvement), :method => "post" do
      assert_select "input#involvement_allow_appointment", :name => "involvement[allow_appointment]"
      assert_select "input#involvement_price", :name => "involvement[price]"
      assert_select "input#involvement_hospital", :name => "involvement[hospital]"
    end
  end
end
