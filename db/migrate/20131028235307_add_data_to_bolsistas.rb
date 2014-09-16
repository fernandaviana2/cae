class AddDataToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :data, :date
  end
end
