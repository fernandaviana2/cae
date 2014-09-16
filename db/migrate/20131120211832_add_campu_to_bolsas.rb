class AddCampuToBolsas < ActiveRecord::Migration
  def self.up
    add_column :bolsas, :campu, :string
  end
end
