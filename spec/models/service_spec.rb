require 'spec_helper'

describe Service do
  	it{ should belong_to (:hospital) }
	# it{ should validate_presence_of (:hospital_id) }
	it{ should belong_to (:department) }
	# it{ should validate_presence_of (:department_id) }
end
