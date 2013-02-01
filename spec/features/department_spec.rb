require 'spec_helper'

feature "F: department" do
	before do
		@d = create(:department)
		3.times{ create(:hospital) }
		sign_in_as_a_admin_user
		visit departments_path
	end

	scenario "adding of new department" do
		click_link("New Department")
		current_url.should == new_department_url
		fill_in "department_name", :with => "department - name"
		select Hospital.first.name, :from => "department_hospital_ids"
		select Hospital.last.name, :from => "department_hospital_ids"
		click_button("Create Department")
		current_url.should == department_url(:id => Department.last.id)
		page.should have_content "Department was successfully created"
		page.should have_content "department - name"
		Department.last.hospitals.size.should == 2
	end

	scenario "editing of existing department" do
		click_link("Edit")
		current_url.should == edit_department_url(:id =>@d.id)
		fill_in "department_name", :with => "department - name - changed"
		select Hospital.all.second.name, :from => "department_hospital_ids"
		click_button("Update Department")
		current_url.should == department_url(:id => @d.id)
		page.should have_content "Department was successfully updated"
		page.should have_content "department - name - changed"
		page.should have_content Hospital.all.second.name
		Department.last.hospitals.size.should == 1
	end
end