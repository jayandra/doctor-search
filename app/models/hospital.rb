class Hospital < ActiveRecord::Base
  attr_accessible :address, :city, :description, :image, :name, :phone1, :phone2

  validates_presence_of :name, :address, :city, :phone1
  validates_numericality_of :phone1, :only_integer => true
  validates_numericality_of :phone2, :only_integer => true, :allow_nil => true
  validates_length_of :phone1, :phone2, :in => 6..7, :allow_nil => true

  has_many :departments, :dependent => :destroy
  has_many :involvements, :dependent => :destroy
  has_many :doctors, :through => :involvements, :dependent => :destroy

end
