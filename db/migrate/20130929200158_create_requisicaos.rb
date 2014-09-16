class CreateRequisicaos < ActiveRecord::Migration
  def change
    create_table :requisicaos do |t|
      t.string :data_requisicao
      t.integer :quantidade_bolsista
      t.string :horario_bolsista
      t.string :assunto
      t.string :nome_de_bolsista
     
      t.timestamps
    end
  end
end
