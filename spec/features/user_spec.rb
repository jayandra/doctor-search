require 'spec_helper'

feature "F: user" do

# For user with role 2 (hospital admin)
	scenario "role-2 Index: should list his hospital at top with added links to edit/destroy" do
	end
	scenario "role-2 Create: If hospital has not been created should have a link to create one." do
	end
	scenario "role-2 Edit: should be able to edit details of his hospital" do
	end
	scenario "role-2 Destroy: should be able to destroy his hospital and then create a new one" do
	end

	scenario "role-2 Index: should be able to list departments" do
	end
	scenario "role-2 Create: should be able to create departments but not assign it to hospitals (assign it in his hospitls edit)" do
	end
	scenario "role-2 Edit / Destroy: should not be able to edit / destroy the department" do
	end

	scenario "role-2 Index: should be able to list doctors belonging to the hospital" do
	end
	scenario "role-2 Index: should not be able to create/edit/destroy doctors" do
	end

# For user with role 3 (doctor admin)
	scenario "role-2 Index: should be able to see list of hospitals" do
	end
	scenario "role-2 Index: should be able to see detail of any hospitals" do
	end
	scenario "role-2 Create: should not be able to create/edit/destroy hospital." do
	end

	scenario "role-2 Index: should be able to list departments" do
	end
	scenario "role-2 Create: should be able to create departments but not assign it to hospitals" do
	end
	scenario "role-2 Edit / Destroy: should not be able to edit / destroy the department" do
	end

	scenario "role-2 Index: should not be able to list doctors" do
	end
	scenario "role-2 Create: If doctor has not been created should have a link to create one." do
	end
	scenario "role-2 Edit: should be able to edit details of respective doctor" do
	end
	scenario "role-2 Destroy: should be able to destroy respective doctor and then create a new one" do
	end

end