class DoctorsAndHospitalsAddUserId < ActiveRecord::Migration
  def up
  	add_column :doctors, :user_id, :integer
  	add_column :hospitals, :user_id, :integer

  	add_index :doctors, :user_id
  	add_index :hospitals, :user_id
  end

  def down
  	remove_column :doctors, :user_id
  	remove_column :hospitals, :user_id
  end
end
