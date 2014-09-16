class RemoveSituacaoFinalizadaFromBolsistas < ActiveRecord::Migration
  def up
  remove_column :bolsistas, :situacao_finalizada
  
  end

  def down
  remove_column :bolsistas, :situacao_finalizada, :string
  end
end
