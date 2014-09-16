class CreateBolsistas < ActiveRecord::Migration
  def self.up
    create_table :bolsistas do |t|
      t.string :cpf
      t.string :matricula
      t.string :numero_pasta
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :tel_residencial
      t.string :tel_celular
      t.string :email
      t.string :rg
      t.string :nome_mae
      t.integer :semestre_inicial_curso
      t.integer :ano_inicial_curso
      t.text :observacao

      t.timestamps
    end
  end
end
