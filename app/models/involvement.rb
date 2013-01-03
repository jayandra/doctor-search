class Involvement < ActiveRecord::Base
  attr_accessible :allow_appointment, :from, :price, :to, :hospital_id, :doctor_id
  after_save :set_doctors_primary_hospital

  belongs_to :hospital
  belongs_to :doctor
  validates_presence_of :hospital_id, :doctor_id
  validates_presence_of :from, :to, :unless => lambda { self.allow_appointment.blank? }

  private
  def set_doctors_primary_hospital
    if self.doctor.hospitals.count == 1
      d = self.doctor
      d.update_attributes( :primary_involvement => self.hospital.id )
    end
  end
  
end
