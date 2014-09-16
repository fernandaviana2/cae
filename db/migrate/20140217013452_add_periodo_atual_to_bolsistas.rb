class AddPeriodoAtualToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :periodo_atual, :string

  end
end
