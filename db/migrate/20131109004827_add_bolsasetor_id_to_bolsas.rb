class AddBolsasetorIdToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :bolsasetor_id, :integer
    
  end
end
