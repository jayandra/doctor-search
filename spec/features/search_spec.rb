require 'spec_helper'

describe "F: searching" do
	before do
		@d1 = FactoryGirl.create(:doctor)
		@d2 = FactoryGirl.create(:doctor)
		@d3 = FactoryGirl.create(:doctor)
		@d4 = FactoryGirl.create(:doctor)

		visit root_path
	end

	context "searching of doctor" do
		it "should give correct values for docter search" do
			
		end
	end
	context "searching of department" do

	end
	context "searching of hospital" do

	end
end