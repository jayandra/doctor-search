class FeaturedHospital < ActiveRecord::Base
  belongs_to :hospital
  attr_accessible :from, :payment, :to
end
