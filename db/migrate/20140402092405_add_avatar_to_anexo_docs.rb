class AddAvatarToAnexoDocs < ActiveRecord::Migration
  
def self.down
       drop_table :anexo_docs
    end

def self.up
    add_attachment :anexo_docs, :avatar
  end

  def self.down
    remove_attachment :anexo_docs, :avatar
  end
end
