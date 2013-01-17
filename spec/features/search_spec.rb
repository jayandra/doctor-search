require 'spec_helper'

feature "F: searching" do
	before do
		@hos1 = create(:hospital)
		@dep1 = @hos1.departments.create( attributes_for(:department) )
      	@dep2 = @hos1.departments.create( attributes_for(:department) )
      	@doc1 = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep1.id) )
      	@doc2 = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2.id) )
      	@doc3 = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2.id) )

      	@hos2 = create(:hospital)
		@dep2_1 = @hos2.departments.create( attributes_for(:department) )
      	@dep2_2 = @hos2.departments.create( attributes_for(:department) )
      	@doc2_1 = @hos2.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2_1.id) )
      	@doc2_2 = @hos2.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2_2.id) )
      	@doc2_3 = @hos2.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2_2.id) )

		visit root_path
	end

	scenario "searching of doctor" do
		fill_in "search_doctor", :with => @doc1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @doc1.name
		page.should_not have_content @doc2.name
	end
	scenario "searching of department" do
		fill_in "search_department", :with => @dep1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @dep1.name
		page.should_not have_content @dep2.name
	end
	scenario "searching of hospital" do
		fill_in "search_hospital", :with => @hos2.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @hos2.name
		page.should_not have_content @hos1.name
	end
	scenario "searching of doctor within department" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_department", :with => @dep1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @doc1.name
		page.should_not have_content @doc2.name
	end

	scenario "searching of doctor not within department" do
		fill_in "search_doctor", :with => @doc2.name
		fill_in "search_department", :with => @dep1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should_not have_content @doc1.name
			page.should_not have_content @doc2.name
		end
	end

	scenario "searching of doctor within hospital" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_hospital", :with => @hos1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @doc1.name
		page.should_not have_content @doc2.name
	end

	scenario "searching of doctor not within hospital" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_hospital", :with => @hos2.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should_not have_content @doc1.name
		end
	end

	scenario "searching of department within hospital" do
		fill_in "search_department", :with => @dep1.name
		fill_in "search_hospital", :with => @hos1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @dep1.name
		page.should_not have_content @dep2.name
	end

	scenario "searching of department not within hospital" do
		fill_in "search_department", :with => @dep1.name
		fill_in "search_hospital", :with => @hos2.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should_not have_content @dep1.name
		end
	end

	scenario "searching of doctor within department and within hospital" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_department", :with => @dep1.name
		fill_in "search_hospital", :with => @hos1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should have_content @doc1.name
		end
	end

	scenario "searching of doctor not within department but within hospital" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_department", :with => @dep2_1.name
		fill_in "search_hospital", :with => @hos1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should_not have_content @doc1.name
		end
	end

	scenario "searching of doctor within department but not within hospital" do
		fill_in "search_doctor", :with => @doc1.name
		fill_in "search_department", :with => @dep1.name
		fill_in "search_hospital", :with => @hos2.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		within("#results") do
			page.should_not have_content @doc1.name
		end
	end

end