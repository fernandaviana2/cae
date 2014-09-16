class RemoveBolsaAdicionalFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :bolsa_adicional
  
  end

  def down
  remove_column :bolsas, :bolsa_adicional, :string
  end
end
