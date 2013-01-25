class Department < ActiveRecord::Base
  attr_accessible :name, :hospital_ids, :description

  has_many :doctors
  has_many :services, :dependent => :destroy
  has_many :hospitals, :through => :services, :dependent => :destroy
  
  validates_presence_of :name

  scope :dep_like, lambda{|de| where("departments.name LIKE ?", "%#{de}%")}
  scope :hos_like, lambda{|h| where(["hospitals.name LIKE ?", "%#{h}%"])}
end
