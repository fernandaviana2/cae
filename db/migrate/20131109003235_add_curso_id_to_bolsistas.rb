class AddCursoIdToBolsistas < ActiveRecord::Migration
  def self.up
    add_column :bolsistas, :curso_id, :integer

  
  end
end
