class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :nome_banco
      t.string :numero_banco

      t.timestamps
    end
  end
end
