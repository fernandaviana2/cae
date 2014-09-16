class RemoveHorarioAtuacaoFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :horario_atuacao
  end

  def down
  remove_column :bolsas, :horario_atuacao, :string
  end
end
