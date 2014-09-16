class AddBancoIdToContas < ActiveRecord::Migration
  def self.up
    add_column :contas, :banco_id, :integer

  end
end
