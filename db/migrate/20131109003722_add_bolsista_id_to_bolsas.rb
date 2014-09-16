class AddBolsistaIdToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :bolsista_id, :integer

  end
end
