class AddSituacaoToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :situacao, :string
  end
end
