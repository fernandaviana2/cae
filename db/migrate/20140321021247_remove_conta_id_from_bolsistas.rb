class RemoveContaIdFromBolsistas < ActiveRecord::Migration
 
 def up
  remove_column :bolsistas, :conta_id
      
  end

  def down
  remove_column :bolsistas, :conta_id, :integer
  
  end
end
