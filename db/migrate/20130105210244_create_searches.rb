class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :doctor
      t.string :department
      t.string :hospital
      t.string :search_template

      t.timestamps
    end
  end
end
