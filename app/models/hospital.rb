class Hospital < ActiveRecord::Base
  attr_accessible :address, :city, :description, :image, :name, :phone1, :phone2
end
