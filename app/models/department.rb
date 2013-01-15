class Department < ActiveRecord::Base
  attr_accessible :name, :hospital_ids

  has_many :doctors
  has_many :services, :dependent => :destroy
  has_many :hospitals, :through => :services, :dependent => :destroy
  
  validates_presence_of :name
end
