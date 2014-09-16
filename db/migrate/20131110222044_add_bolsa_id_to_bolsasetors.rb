class AddBolsaIdToBolsasetors < ActiveRecord::Migration
  def self.up
    add_column :bolsasetors, :bolsa_id, :integer
 end 
end
