require 'spec_helper'

feature "F: hospital" do
	before do
		create(:hospital)
		3.times{ create(:department) }
		visit hospitals_path
	end

	scenario "adding of new hospital" do
		click_link("New Hospital")
		current_url.should == new_hospital_url
		fill_in "hospital_name", :with => "Hospital - name"
		fill_in "hospital_address", :with => "Hospital - address"
		fill_in "hospital_city", :with => "Hospital - city"
		fill_in "hospital_phone1", :with => "1234567"
		fill_in "hospital_phone2", :with => "123456"
		fill_in "hospital_phone2", :with => "123456"
		fill_in "hospital_description", :with => "This is hospital description"
		select Department.first.name, :from => "hospital_department_ids"
		select Department.last.name, :from => "hospital_department_ids"
		click_button("Create Hospital")
		current_url.should == hospital_url(:id => 2)
		page.should have_content "Hospital was successfully created"
		page.should have_content "Hospital - name"
		Hospital.last.departments.size.should == 2
	end

	scenario "editing of existing hospital" do
		click_link("Edit")
		current_url.should == edit_hospital_url(:id =>1)
		fill_in "hospital_name", :with => "Hospital - name"
		fill_in "hospital_address", :with => "Hospital - address"
		fill_in "hospital_city", :with => "Hospital - city"
		fill_in "hospital_phone1", :with => "1234567"
		fill_in "hospital_phone2", :with => "123456"
		fill_in "hospital_phone2", :with => "123456"
		fill_in "hospital_description", :with => "This is hospital description"
		select Department.find(2).name, :from => "hospital_department_ids"
		click_button("Update Hospital")
		current_url.should == hospital_url(:id => 1)
		page.should have_content "Hospital was successfully updated"
		page.should have_content "Hospital - name"
		page.should have_content Department.find(2).name
		Hospital.last.departments.size.should == 1
	end
end