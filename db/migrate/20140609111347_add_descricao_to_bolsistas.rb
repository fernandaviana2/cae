class AddDescricaoToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :descricao, :string

  end
end
