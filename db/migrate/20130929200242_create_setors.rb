class CreateSetors < ActiveRecord::Migration
  def change
    create_table :setors do |t|
      t.string :nome_setor
      t.string :coordenador
      t.integer :total_setor
      t.string :email_setor

      t.timestamps
    end
  end
end
