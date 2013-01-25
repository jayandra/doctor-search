class DepartmentAddDescription < ActiveRecord::Migration
  def up
  	add_column :departments, :description, :text
  end

  def down
  	remove_column :departments, :description
  end
end
