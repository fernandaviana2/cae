class CreateConta < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :numero_agencia
      t.string :numero_conta

      t.timestamps
    end
  end
end
