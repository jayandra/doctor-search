class Department < ActiveRecord::Base
  belongs_to :hospital
  attr_accessible :name
end
