class AddDataSaidaToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :data_saida, :string
  end
end
