class AddContaIdToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :conta_id, :integer

  end
end
