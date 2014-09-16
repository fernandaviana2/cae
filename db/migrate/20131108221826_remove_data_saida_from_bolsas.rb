class RemoveDataSaidaFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :data_saida
  end

  def down
  remove_column :bolsas, :data_saida, :string
  end
end
