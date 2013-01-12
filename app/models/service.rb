class Service < ActiveRecord::Base
  attr_accessible :department, :hospital

  belongs_to :hospital
  belongs_to :department
  validates_presence_of :hospital_id, :department_id
end
