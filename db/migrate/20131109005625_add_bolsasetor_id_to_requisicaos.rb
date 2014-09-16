class AddBolsasetorIdToRequisicaos < ActiveRecord::Migration
  def self.up
    add_column :requisicaos, :bolsasetor_id, :integer

  end
end
