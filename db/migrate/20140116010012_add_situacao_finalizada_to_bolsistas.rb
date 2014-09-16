class AddSituacaoFinalizadaToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :situacao_finalizada, :string

  end
end
