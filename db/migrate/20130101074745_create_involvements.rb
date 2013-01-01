class CreateInvolvements < ActiveRecord::Migration
  def change
    create_table :involvements do |t|
      t.boolean :allow_appointment  , :default => false
      t.float :price                , :default => 0.0
      t.time :from
      t.time :to
      t.references :hospital

      t.timestamps
    end
    add_index :involvements, :hospital_id
  end
end
