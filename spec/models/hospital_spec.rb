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

  it { should have_many(:departments).dependent(:destroy)}
  it { should have_many(:involvements).dependent(:destroy)}
  it { should have_many(:doctors).through(:involvements)}

  describe "#doctors" do
    it "should assign multiple (here 2) doctors" do
      @hospital = create(:hospital)
      @d1 = @hospital.doctors.create( attributes_for(:doctor) )
      @d2 = @hospital.doctors.create( attributes_for(:doctor) )
      @hospital.doctors.should eq( [@d1,@d2] )
      # expect { @hospital.doctors }.to eq( [@d1,@d2] )
    end
  end

end
