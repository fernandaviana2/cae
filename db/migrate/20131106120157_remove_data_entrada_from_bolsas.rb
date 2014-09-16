class RemoveDataEntradaFromBolsas < ActiveRecord::Migration
  def up
   remove_column :bolsas, :data_entrada
  end

  def down
      remove_column :bolsas, :data_entrada, :string
  end
end
