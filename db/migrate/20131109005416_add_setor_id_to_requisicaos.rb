class AddSetorIdToRequisicaos < ActiveRecord::Migration
  def self.up
    add_column :requisicaos, :setor_id, :integer

  end
end
