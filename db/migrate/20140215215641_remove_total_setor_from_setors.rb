class RemoveTotalSetorFromSetors < ActiveRecord::Migration
   def up
  remove_column :setors, :total_setor
  
  end

  def down
  remove_column :setors, :total_setor, :integer
  end
end
