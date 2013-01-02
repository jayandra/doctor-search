class Doctor < ActiveRecord::Base
  belongs_to :department
  attr_accessible :checkup_time, :email, :message, :mobile1, :mobile2, :name, :phone1, :phone2, :primary_involvement
end
