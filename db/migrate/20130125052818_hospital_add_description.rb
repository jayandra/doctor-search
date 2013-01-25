class HospitalAddDescription < ActiveRecord::Migration
  def up
  	change_column :hospitals, :description, :text
  end

  def down
  	change_column :hospitals, :description, :string
  end
end
