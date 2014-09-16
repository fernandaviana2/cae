class AddAvatarToBolsistas < ActiveRecord::Migration
  def self.down
       drop_table :bolsistas
    end

def self.up
    add_attachment :bolsistas, :avatar
  end

  def self.down
    remove_attachment :bolsistas, :avatar
  end
end
