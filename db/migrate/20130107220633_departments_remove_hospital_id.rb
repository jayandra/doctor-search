class DepartmentsRemoveHospitalId < ActiveRecord::Migration
  def up
  	remove_column :departments, :hospital_id
  end

  def down
  	add_column :departments, :hospital_id, :integer
  	add_index :departments, :hospital_id
  end
end
