require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :hospital => "",
      :department => ""
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path, :method => "post" do
      assert_select "input#service_hospital", :name => "service[hospital]"
      assert_select "input#service_department", :name => "service[department]"
    end
  end
end
