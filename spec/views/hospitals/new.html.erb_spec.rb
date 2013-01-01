require 'spec_helper'

describe "hospitals/new" do
  before(:each) do
    assign(:hospital, stub_model(Hospital,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :image => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new hospital form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hospitals_path, :method => "post" do
      assert_select "input#hospital_name", :name => "hospital[name]"
      assert_select "input#hospital_address", :name => "hospital[address]"
      assert_select "input#hospital_city", :name => "hospital[city]"
      assert_select "input#hospital_phone1", :name => "hospital[phone1]"
      assert_select "input#hospital_phone2", :name => "hospital[phone2]"
      assert_select "input#hospital_image", :name => "hospital[image]"
      assert_select "input#hospital_description", :name => "hospital[description]"
    end
  end
end
