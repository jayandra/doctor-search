class Hospital < ActiveRecord::Base
  attr_accessible :address, :city, :description, :image, :name, :phone1, :phone2, :department_ids

  belongs_to :user
  
  validates_presence_of :name, :address, :city, :phone1
  validates_numericality_of :phone1, :only_integer => true
  validates_numericality_of :phone2, :only_integer => true, :allow_blank => true
  validates_length_of :phone1, :phone2, :in => 6..7, :allow_blank => true

  has_many :services, :dependent => :destroy
  has_many :departments, :through => :services, :dependent => :destroy
  has_many :involvements, :dependent => :destroy
  has_many :doctors, :through => :involvements, :dependent => :destroy

  scope :hos_like, lambda{|h| where(["hospitals.name LIKE ?", "%#{h}%"])}

end
