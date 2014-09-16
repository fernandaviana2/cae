class AddComplementoToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :complemento, :string

  end
end
