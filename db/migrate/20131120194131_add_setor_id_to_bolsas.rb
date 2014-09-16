class AddSetorIdToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :setor_id, :integer

  end
end
