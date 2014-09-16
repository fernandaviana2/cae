class AddAnexoIdToBolsistas < ActiveRecord::Migration
   def self.up
    add_column :bolsistas, :anexo_id, :integer
  end
end
