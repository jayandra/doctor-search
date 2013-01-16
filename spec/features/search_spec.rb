require 'spec_helper'

feature "F: searching" do
	before do
		@d1 = FactoryGirl.create(:doctor)
		@d2 = FactoryGirl.create(:doctor)
		@d3 = FactoryGirl.create(:doctor)
		@d4 = FactoryGirl.create(:doctor)

		visit root_path
	end

	scenario "searching of doctor" do
		fill_in "search_doctor", :with => @d1.name
		click_button "Get Results"
		current_url.should == search_url(:id => 1)
		page.should have_content @d1.name
		page.should_not have_content @d2.name
	end
	scenario "searching of department" do

	end
	scenario "searching of hospital" do

	end
end