class RemoveSituacoesFromBolsistas < ActiveRecord::Migration
  def up
    remove_column :bolsas, :situacao_finalizada
    remove_column :bolsas, :situacao
    add_column :bolsas, :situacao, :string, :default => "Ativo"
  end

  def down
    add_column :bolsas, :situacao_finalizada, :string
  end
end
