class CreateAnexos < ActiveRecord::Migration
  def change
    create_table :anexos do |t|
      t.string :anexos
      t.string :descricao
      t.references :bolsista

      t.timestamps
    end
    add_index :anexos, :bolsista_id
  end
end
