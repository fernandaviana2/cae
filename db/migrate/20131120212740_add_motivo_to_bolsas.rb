class AddMotivoToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :motivo, :string
  end
end
