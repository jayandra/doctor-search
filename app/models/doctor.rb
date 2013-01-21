class Doctor < ActiveRecord::Base
  attr_accessible :checkup_time, :email, :message, :mobile1, :mobile2, :name, :phone1, :phone2, 
                  :primary_involvement, :department_id, :involvements_attributes

  belongs_to :department
  has_many :involvements, :dependent => :destroy
  has_many :hospitals, :through => :involvements, :dependent => :destroy

  validates_presence_of :name, :department_id
  validates_numericality_of :phone1, :only_integer => true, :allow_blank => true
  validates_numericality_of :phone2, :only_integer => true, :allow_blank => true
  validates_length_of :phone1, :phone2, :in => 6..7, :allow_blank => true
  validates_numericality_of :mobile1, :only_integer => true, :allow_blank => true
  validates_numericality_of :mobile2, :only_integer => true, :allow_blank => true
  validates_length_of :mobile1, :mobile2, :is => 10, :allow_blank => true
  validate :check_hospital

  accepts_nested_attributes_for :involvements, :allow_destroy => true
  # validates_associated :involvements
  scope :doc_like, lambda{|d| where(["doctors.name LIKE ?", "%#{d}%"])}
  scope :dep_like, lambda{|de| where("departments.name LIKE ?", "%#{de}%")}
  scope :hos_like, lambda{|h| where(["hospitals.name LIKE ?", "%#{h}%"])}

  def primary_hospital
    self.hospitals.find_by_id(primary_involvement)
  end

  def primary_hospital=(hospital)
    pri_inv = self.involvements.find_by_hospital_id(self.primary_involvement)
    pri_inv.update_attributes(:hospital_id => hospital.id.to_i)

    self.primary_involvement = hospital.id.to_i
    self.save!
  end


  # wont catch doctor created through hospital (eg. @hospital.doctors.create(...doctors_attributes...))
  def check_hospital
    # if self.hospitals.present?
    #   choosed_hospitals = [self.hospitals].flatten.collect(&:id)
    #   departments_hospitals = [self.department.hospitals.select("hospitals.id")].flatten.collect(&:id)
    #   if (choosed_hospitals & departments_hospitals) != choosed_hospitals
    #     binding.pry
    #     self.errors.add(:department_id,'The department and hospitals must correspond')
    #     self.errors.add(:hospital_ids,'The department and hospitals must correspond')
    #   end
    # end
    if self.involvements.present?
      choosed_hospitals = []
      self.involvements.each do |inv|
        choosed_hospitals << inv.hospital
      end
      choosed_hospitals = choosed_hospitals.collect(&:id)
      departments_hospitals = [self.department.hospitals.select("hospitals.id")].flatten.collect(&:id)

      if(choosed_hospitals.length != choosed_hospitals.uniq.length)
        self.errors.add(:department_id,'The department has repeting hospitals')
      end

      if (choosed_hospitals & departments_hospitals) != choosed_hospitals
        # binding.pry
        self.errors.add(:department_id,'The department and hospitals must correspond')
        self.errors.add(:hospital_ids,'The department and hospitals must correspond')
      end

      if ( [primary_involvement] & departments_hospitals) != [primary_involvement]
        # binding.pry
        self.errors.add(:department_id,'The department and primary hospitals must correspond')
      end
    end
  end
end
