require 'spec_helper'

describe Hospital do
  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:address) }
  it { should validate_presence_of (:city) }
  it { should validate_presence_of (:phone1) }

  it { should validate_numericality_of (:phone1) }
  it { should validate_numericality_of (:phone2) }

  it { should ensure_length_of(:phone1).is_at_least(6).is_at_most(7) }
  it { should ensure_length_of(:phone2).is_at_least(6).is_at_most(7) }

  it { should have_many (:departments)}
  it { should have_many (:involvements)}

end
