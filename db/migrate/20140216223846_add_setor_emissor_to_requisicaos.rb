class AddSetorEmissorToRequisicaos < ActiveRecord::Migration
  def self.up
    add_column :requisicaos, :setor_emissor, :string

  end
end
