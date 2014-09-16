class AddRamalToSetors < ActiveRecord::Migration
  def self.up
    add_column :setors, :ramal, :string  
  end
end
