class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.references :hospital

      t.timestamps
    end
    add_index :departments, :hospital_id
  end
end
