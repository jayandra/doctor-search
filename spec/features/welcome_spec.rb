require 'spec_helper'

describe "Welcome #index" do
	before do
		visit root_path
	end

	describe "check templates tabs" do
	  context "when not logged in" do

	  end
	  context "when loged in" do

	  end
	end

	describe "check search fields" do
		it "searches for 3 fields" do
			page.should have_selector('#search_doctor')
			page.should have_selector('#search_department')
			page.should have_selector('#search_hospital')
		end
	end
end
