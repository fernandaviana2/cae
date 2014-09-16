class AddSetorIdToBolsasetors < ActiveRecord::Migration
  def self.up
    add_column :bolsasetors, :setor_id, :integer
  end
end
