class CreateBolsasetors < ActiveRecord::Migration
  def change
    create_table :bolsasetors do |t|
      t.string :data_entrada
      t.string :horario_atuacao
      t.string :data_saida
      t.string :campu
      t.text :atribuicoes
      t.string :situacao

      t.timestamps
    end
  end
end
