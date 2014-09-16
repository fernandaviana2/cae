class AddBolsadicionalToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :bolsadicional, :string

  end
end
