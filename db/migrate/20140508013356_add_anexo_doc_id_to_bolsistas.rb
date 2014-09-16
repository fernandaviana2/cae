class AddAnexoDocIdToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :anexo_doc_id, :integer
  end

end
