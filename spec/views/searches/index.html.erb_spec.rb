require 'spec_helper'

describe "searches/index" do
  before(:each) do
    assign(:searches, [
      stub_model(Search,
        :doctor => "Doctor",
        :department => "Department",
        :hospital => "Hospital",
        :search_template => "Search Template"
      ),
      stub_model(Search,
        :doctor => "Doctor",
        :department => "Department",
        :hospital => "Hospital",
        :search_template => "Search Template"
      )
    ])
  end

  it "renders a list of searches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Doctor".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Hospital".to_s, :count => 2
    assert_select "tr>td", :text => "Search Template".to_s, :count => 2
  end
end
