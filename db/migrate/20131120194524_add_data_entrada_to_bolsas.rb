class AddDataEntradaToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :data_entrada, :string

  end
end
