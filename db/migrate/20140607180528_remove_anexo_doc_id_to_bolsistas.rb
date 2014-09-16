class RemoveAnexoDocIdToBolsistas < ActiveRecord::Migration
 
 def up
  remove_column :bolsistas, :anexo_doc_id
      
  end

  def down
  remove_column :bolsistas, :anexo_doc_id, :integer
  
  end
end
