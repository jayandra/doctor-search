class Involvement < ActiveRecord::Base
  attr_accessible :allow_appointment, :from, :price, :to

  belongs_to :hospital
  validates_presence_of :hospital_id
  validates_presence_of :from, :to, :unless => lambda { self.allow_appointment.blank? }
  
end
