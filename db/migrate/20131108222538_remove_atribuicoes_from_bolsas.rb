class RemoveAtribuicoesFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :atribuicoes
  end

  def down
  remove_column :bolsas, :atribuicoes, :string
  end
end
