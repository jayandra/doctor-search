require 'spec_helper'

describe Doctor do
  it{ should validate_presence_of (:name)}
  it{ should validate_presence_of (:department_id)}

  it { should validate_numericality_of (:phone1) }
  it { should validate_numericality_of (:phone2) }
  it { should validate_numericality_of (:mobile1) }
  it { should validate_numericality_of (:mobile2) }

  it { should ensure_length_of(:phone1).is_at_least(6).is_at_most(7) }
  it { should ensure_length_of(:phone2).is_at_least(6).is_at_most(7) }
  it { should ensure_length_of(:mobile1).is_equal_to(10) }
  it { should ensure_length_of(:mobile2).is_equal_to(10) }

  it { should have_many(:involvements).dependent(:destroy)}
  it { should have_many(:hospitals).through(:involvements).dependent(:destroy)}
  it { should belong_to(:department) }

  describe "#hospitals" do
    it "should assign multiple (here 2) hospitals" do
      @doctor = create(:doctor)
      @h1 = @doctor.hospitals.create( attributes_for(:hospital) )
      @h2 = @doctor.hospitals.create( attributes_for(:hospital) )
      @doctor.hospitals.should eq( [@h1,@h2] )
      # expect { @doctor.hospitals }.to eq( [@h1,@h2] )
    end
  end

  describe "#primary_hospital" do
    context "when hospital is not assigned" do
      it "should set first hospital for involvement" do
        @doctor = create(:doctor)
        @h1 = @doctor.hospitals.create( attributes_for(:hospital) )
        @h2 = @doctor.hospitals.create( attributes_for(:hospital) )
        Doctor.find(@doctor).primary_hospital.should eq(@h1)
      end
    end
    context "when hospital is assigned" do
      it "should set assigned hospital for involvement" do
        @doctor = create(:doctor)
        @h1 = @doctor.hospitals.create( attributes_for(:hospital) )
        @h2 = @doctor.hospitals.create( attributes_for(:hospital) )
        @h3 = @doctor.hospitals.create( attributes_for(:hospital) )
        # @doctor.involvement.should eq(@h1)
        @doctor.primary_hospital=(@h3)
        @doctor.primary_hospital.should eq(@h3)
      end
    end
  end
end
