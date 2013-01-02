class Department < ActiveRecord::Base
  attr_accessible :name

  belongs_to :hospital
  
  validates_presence_of :name, :hospital_id
end
