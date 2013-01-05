require 'spec_helper'

describe "searches/edit" do
  before(:each) do
    @search = assign(:search, stub_model(Search,
      :doctor => "MyString",
      :department => "MyString",
      :hospital => "MyString",
      :search_template => "MyString"
    ))
  end

  it "renders the edit search form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => searches_path(@search), :method => "post" do
      assert_select "input#search_doctor", :name => "search[doctor]"
      assert_select "input#search_department", :name => "search[department]"
      assert_select "input#search_hospital", :name => "search[hospital]"
      assert_select "input#search_search_template", :name => "search[search_template]"
    end
  end
end
