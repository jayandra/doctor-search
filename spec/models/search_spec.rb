require 'spec_helper'

describe Search do
  it {should validate_presence_of (:search_template)}

  describe ".set_search_template" do

  	context "when doctor provided" do
  		it "should set search_template to 'doctor'" do
  			params = {:search => {:doctor => "doctor_name", :department => nil, :hospital => nil}}
  			Search.set_search_template(params).should eq("doctors")
  		end
  	end
  	context "when doctor and department provided" do
  		it "should set search_template to 'doctor'" do
  			params = {:search => {:doctor => "doctor_name", :department => "department_name", :hospital => nil}}
  			Search.set_search_template(params).should eq("doctors")
  		end
  	end
  	context "when doctor and hospital provided" do
  		it "should set search_template to 'doctor'" do
  			params = {:search => {:doctor => "doctor_name", :department => nil, :hospital => "hospital_name"}}
  			Search.set_search_template(params).should eq("doctors")
  		end
  	end
  	context "when doctor department and hospital provided" do
  		it "should set search_template to 'doctor'" do
  			params = {:search => {:doctor => "doctor_name", :department => "department_name", :hospital => "hospital_name"}}
  			Search.set_search_template(params).should eq("doctors")
  		end
  	end

  	context "when department provided" do
  		it "should set search_template to 'department'" do
  			params = {:search => {:doctor => nil, :department => "department_name", :hospital => nil}}
  			Search.set_search_template(params).should eq("departments")
  		end
  	end
  	context "when department and hospital provided" do
  		it "should set search_template to 'department'" do
  			params = {:search => {:doctor => nil, :department => "department_name", :hospital => "hospital_name"}}
  			Search.set_search_template(params).should eq("departments")
  		end
  	end

  	context "when hospital provided" do
  		it "should set search_template to 'hospital'" do
  			params = {:search => {:doctor => nil, :department => nil, :hospital => "hospital_name"}}
  			Search.set_search_template(params).should eq("hospitals")
  		end
  	end
  end
end
