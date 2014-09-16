class RemoveSituacaoFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :situacao
  end

  def down
  remove_column :bolsas, :situacao, :string
  end
end
