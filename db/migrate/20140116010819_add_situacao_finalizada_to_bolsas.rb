class AddSituacaoFinalizadaToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :situacao_finalizada, :string

  end
end
