class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.float :checkup_time    , :default => 0.5
      t.string :email
      t.text :message
      t.string :mobile1
      t.string :mobile2
      t.string :phone1
      t.string :phone2
      t.integer :primary_involvement
      t.string :name
      t.references :department

      t.timestamps
    end
    add_index :doctors, :department_id
  end
end
