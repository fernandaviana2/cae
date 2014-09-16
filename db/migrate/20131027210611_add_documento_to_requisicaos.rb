class AddDocumentoToRequisicaos < ActiveRecord::Migration
  def self.up
    add_column :requisicaos, :documento, :string
  end
end
