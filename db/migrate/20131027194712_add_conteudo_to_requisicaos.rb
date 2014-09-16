class AddConteudoToRequisicaos < ActiveRecord::Migration
  def self.up
    add_column :requisicaos, :conteudo, :text
  end
end
