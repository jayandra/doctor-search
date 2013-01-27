class IndexAdditionToDoctorHospitalDepartment < ActiveRecord::Migration
  def up
  	add_index :doctors, :name
  	add_index :departments, :name
  	add_index :hospitals, :name
  end

  def down
  	remove_index :doctors, :name
  	remove_index :departments, :name
  	remove_index :hospitals, :name
  end
end
