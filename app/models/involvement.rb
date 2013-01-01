class Involvement < ActiveRecord::Base
  belongs_to :hospital
  attr_accessible :allow_appointment, :from, :price, :to
end
