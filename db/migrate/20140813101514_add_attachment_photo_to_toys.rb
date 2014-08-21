class AddAttachmentPhotoToToys < ActiveRecord::Migration
  def self.up
    change_table :toys do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :toys, :photo
  end
end
