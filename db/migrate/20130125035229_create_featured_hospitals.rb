class CreateFeaturedHospitals < ActiveRecord::Migration
  def change
    create_table :featured_hospitals do |t|
      t.date :from
      t.date :to
      t.boolean :payment
      t.references :hospital

      t.timestamps
    end
    add_index :featured_hospitals, :hospital_id
  end
end
