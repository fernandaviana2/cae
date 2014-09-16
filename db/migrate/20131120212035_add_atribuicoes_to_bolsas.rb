class AddAtribuicoesToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :atribuicoes, :string
  end
end
