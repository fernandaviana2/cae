class AddBolsistaIdToAnexoDocs < ActiveRecord::Migration
  def self.up
    add_column :anexo_docs, :bolsista_id, :integer

  end
end
