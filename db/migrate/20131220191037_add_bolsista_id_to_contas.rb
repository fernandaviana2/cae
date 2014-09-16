class AddBolsistaIdToContas < ActiveRecord::Migration
  def self.up
    add_column :contas, :bolsista_id, :integer
 end 
  
end
