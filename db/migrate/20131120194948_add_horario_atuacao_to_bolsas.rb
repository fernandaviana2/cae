class AddHorarioAtuacaoToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :horario_atuacao, :string

  end
end
