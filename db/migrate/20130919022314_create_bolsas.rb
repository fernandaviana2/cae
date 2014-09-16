class CreateBolsas < ActiveRecord::Migration
  def change
    create_table :bolsas do |t|
      t.string :data_entrada
      t.string :horario_atuacao
      t.string :data_saida
      t.string :campu
      t.string :bolsa_adicional
      t.text :atribuicoes
      t.string :situacao

      t.timestamps
    end
  end
end
