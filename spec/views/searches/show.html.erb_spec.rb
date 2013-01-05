require 'spec_helper'

describe "searches/show" do
  before(:each) do
    @search = assign(:search, stub_model(Search,
      :doctor => "Doctor",
      :department => "Department",
      :hospital => "Hospital",
      :search_template => "Search Template"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Doctor/)
    rendered.should match(/Department/)
    rendered.should match(/Hospital/)
    rendered.should match(/Search Template/)
  end
end
