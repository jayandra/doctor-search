class Doctor < ActiveRecord::Base
  attr_accessible :checkup_time, :email, :message, :mobile1, :mobile2, :name, :phone1, :phone2, :primary_involvement, :department_id

  belongs_to :department
  has_many :involvements, :dependent => :destroy
  has_many :hospitals, :through => :involvements, :dependent => :destroy

  validates_presence_of :name, :department_id
  validates_numericality_of :phone1, :only_integer => true, :allow_nil => true
  validates_numericality_of :phone2, :only_integer => true, :allow_nil => true
  validates_length_of :phone1, :phone2, :in => 6..7, :allow_nil => true
  validates_numericality_of :mobile1, :only_integer => true, :allow_nil => true
  validates_numericality_of :mobile2, :only_integer => true, :allow_nil => true
  validates_length_of :mobile1, :mobile2, :is => 10, :allow_nil => true

  scope :doc_like, lambda{|d| where(["doctors.name LIKE ?", "%#{d}%"])}

  def primary_hospital
    self.hospitals.find_by_id(primary_involvement)
  end

  def primary_hospital=(hospital)
    self.primary_involvement = hospital.id.to_i
    self.save!
  end
end
