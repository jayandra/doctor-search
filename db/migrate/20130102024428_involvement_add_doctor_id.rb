class InvolvementAddDoctorId < ActiveRecord::Migration
  def up
  	add_column :involvements, :doctor_id, :integer

  	add_index :involvements, :doctor_id
  end

  def down
  	remove_column :involvements, :doctor_id
  end
end
