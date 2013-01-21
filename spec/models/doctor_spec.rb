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
      @doctor.hospitals.should include(@h1,@h2)
      # expect { @doctor.hospitals }.to eq( [@h1,@h2] )
    end
  end

  describe "#primary_hospital" do
      it "should get primary_hospital" do
        @hos1 = create(:hospital)
        @dep1 = @hos1.departments.create( attributes_for(:department) )
        @dep2 = @hos1.departments.create( attributes_for(:department) )
        @hos2 = create(:hospital)
        @doctor = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2.id, :primary_involvement => @hos1.id) )
        Doctor.find(@doctor).primary_hospital.should eq(@hos1)
      end
  end
  describe "#primary_hospital=" do
      it "should set primary_hospital" do
        @hos1 = create(:hospital)
        @dep1 = @hos1.departments.create( attributes_for(:department) )
        @dep2 = @hos1.departments.create( attributes_for(:department) )
        @doctor = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2.id, :primary_involvement => @hos1.id) )
        
        @hos2 = @dep2.hospitals.create( attributes_for(:hospital) )
        Doctor.find(@doctor).primary_hospital.should eq(@hos1)
        Doctor.find(@doctor).primary_hospital=(@hos2)
        Doctor.find(@doctor).primary_hospital.should eq(@hos2)
      end
  end

  describe "#check_hospital" do
    before do
      @hos1 = create(:hospital)
      @dep1 = @hos1.departments.create( attributes_for(:department) )
      @dep2 = @hos1.departments.create( attributes_for(:department) )
      @hos2 = create(:hospital)
      @dep2_1 = @hos2.departments.create( attributes_for(:department) )
      @dep2_2 = @hos2.departments.create( attributes_for(:department) )
    end

    it "should save doctor when hospital includes assigned department" do
      @doc1 = @hos1.doctors.create( attributes_for(:doctor).merge(:department_id => @dep2.id) )
      expect{ @doc1.save! }.to_not raise_error
    end
    it "should not save doctor when hospital does not include assigned department" do
      @doc1 = Doctor.new( attributes_for(:doctor).merge(:department_id => @dep2_1.id, :primary_involvement => @hos1.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos1.id) )
      expect{ @doc1.save! }.to raise_error
    end
  end

  describe "#check_hospital - uniqueness of involvements" do
    before do
      @dep1 = create(:department)
      @hos1 = @dep1.hospitals.create( attributes_for(:hospital) )
      @hos2 = @dep1.hospitals.create( attributes_for(:hospital) )
      @hos3 = @dep1.hospitals.create( attributes_for(:hospital) )
    end

    it " should save doctor when involvements in hospitals are unique" do
      @doc1 = Doctor.new( attributes_for(:doctor).merge(:department_id => @dep1.id, :primary_involvement => @hos1.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos1.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos2.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos3.id) )
      expect{ @doc1.save! }.to_not raise_error
    end

    it " should not save doctor when involvements in hospitals are not unique" do
      @doc1 = Doctor.new( attributes_for(:doctor).merge(:department_id => @dep1.id, :primary_involvement => @hos1.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos1.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos2.id) )
      @doc1.involvements.build( attributes_for(:involvement).merge(:hospital_id => @hos1.id) )
      expect{ @doc1.save! }.to raise_error
    end
  end
end
