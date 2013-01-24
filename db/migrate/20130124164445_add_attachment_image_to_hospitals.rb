class AddAttachmentImageToHospitals < ActiveRecord::Migration
  def self.up
    change_table :hospitals do |t|
      t.attachment :image
      remove_column :hospitals, :image
    end
  end

  def self.down
    drop_attached_file :hospitals, :image
    add_column :hospitals, :image, :string
  end
end
