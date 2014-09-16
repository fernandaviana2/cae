class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome_curso
      t.string :numero_periodo

      t.timestamps
    end
  end
end
