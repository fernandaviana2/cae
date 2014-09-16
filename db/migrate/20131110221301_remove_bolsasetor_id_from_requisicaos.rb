class RemoveBolsasetorIdFromRequisicaos < ActiveRecord::Migration
  def up
  remove_column :requisicaos, :bolsasetor_id
  end

  def down
  remove_column :requisicaos, :bolsasetor_id, :string
  end
end
