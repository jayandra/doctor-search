class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :hospital
      t.references :department

      t.timestamps
    end
    add_index :services, :department_id
    add_index :services, :hospital_id
  end
end
