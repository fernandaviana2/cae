class AddAttachmentAvatarToAnexos < ActiveRecord::Migration
  def self.up
    change_table :anexos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :anexos, :avatar
  end
end
