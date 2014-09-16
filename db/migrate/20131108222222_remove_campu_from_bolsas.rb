class RemoveCampuFromBolsas < ActiveRecord::Migration
  def up
  remove_column :bolsas, :campu
  end

  def down
  remove_column :bolsas, :campu, :string
  end
end
