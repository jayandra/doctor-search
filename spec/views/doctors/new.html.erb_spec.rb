require 'spec_helper'

describe "doctors/new" do
  before(:each) do
    assign(:doctor, stub_model(Doctor,
      :checkup_time => 1.5,
      :email => "MyString",
      :message => "MyText",
      :mobile1 => "MyString",
      :mobile2 => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :primary_involvement => 1,
      :name => "MyString",
      :department => nil
    ).as_new_record)
  end

  it "renders new doctor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doctors_path, :method => "post" do
      assert_select "input#doctor_checkup_time", :name => "doctor[checkup_time]"
      assert_select "input#doctor_email", :name => "doctor[email]"
      assert_select "textarea#doctor_message", :name => "doctor[message]"
      assert_select "input#doctor_mobile1", :name => "doctor[mobile1]"
      assert_select "input#doctor_mobile2", :name => "doctor[mobile2]"
      assert_select "input#doctor_phone1", :name => "doctor[phone1]"
      assert_select "input#doctor_phone2", :name => "doctor[phone2]"
      assert_select "input#doctor_primary_involvement", :name => "doctor[primary_involvement]"
      assert_select "input#doctor_name", :name => "doctor[name]"
      assert_select "input#doctor_department", :name => "doctor[department]"
    end
  end
end
