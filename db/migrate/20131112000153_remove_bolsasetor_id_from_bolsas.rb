class RemoveBolsasetorIdFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :bolsasetor_id
  end

  def down
  remove_column :bolsas, :bolsasetor_id, :integer
  end
end
