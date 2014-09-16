class AddAvatarToAnexos < ActiveRecord::Migration
  def self.down
       drop_table :anexos
    end

def self.up
    add_attachment :anexos, :avatar
  end

  def self.down
    remove_attachment :anexos, :avatar
  end
end
