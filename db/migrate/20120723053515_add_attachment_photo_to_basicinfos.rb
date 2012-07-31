class AddAttachmentPhotoToBasicinfos < ActiveRecord::Migration
  def self.up
    change_table :basicinfos do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :basicinfos, :photo
  end
end
