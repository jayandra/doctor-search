class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone1
      t.string :phone2
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
