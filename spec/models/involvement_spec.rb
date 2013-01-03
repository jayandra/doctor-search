require 'spec_helper'

describe Involvement do
  it{ should belong_to (:hospital) }
  it{ should validate_presence_of (:hospital_id) }
  it{ should belong_to (:doctor) }
  it{ should validate_presence_of (:doctor_id) }

  describe "should validate 'from' and 'to' fields based on 'allow_appointment'" do
  	context "'allow_appointment' is true" do
  		it "checks presence_of 'from'" do
  			@involvement = create(:involvement)

  			expect { @involvement.save! }.to_not raise_error
  			@involvement.from = nil
  			expect { @involvement.save! }.to raise_error(ActiveRecord::RecordInvalid)
  		end
  		it "checks presence_of 'to'" do
  			@involvement = create(:involvement)

  			expect { @involvement.save! }.to_not raise_error
  			@involvement.to = nil
  			expect { @involvement.save! }.to raise_error(ActiveRecord::RecordInvalid)
  		end
  	end
  	context "'allow_appointment' is false" do
  		it "allows 'from' to be blank" do
  			@involvement = create(:involvement)

  			expect { @involvement.save! }.to_not raise_error
  			@involvement.allow_appointment = false
  			@involvement.from = nil
  			expect { @involvement.save! }.to_not raise_error(ActiveRecord::RecordInvalid)
  		end
  		it "allows 'to' to be blank" do
  			@involvement = create(:involvement)

  			expect { @involvement.save! }.to_not raise_error
  			@involvement.allow_appointment = false
  			@involvement.to = nil
  			expect { @involvement.save! }.to_not raise_error(ActiveRecord::RecordInvalid)
  		end
  	end
  end

  describe "#set_doctors_primary_hospital" do
    pending "should set first hospital as doctors primary hospital"
  end
end
