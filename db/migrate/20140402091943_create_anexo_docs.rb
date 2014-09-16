class CreateAnexoDocs < ActiveRecord::Migration
  def self.up
    create_table :anexo_docs do |t|
      t.string :anexo_docs
      t.string :descricao

      t.timestamps
    end
  end
end
