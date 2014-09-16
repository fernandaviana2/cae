class RemoveNameFromUsuarios < ActiveRecord::Migration
  def up
  remove_column :usuarios, :name
  remove_column :usuarios, :login
  remove_column :usuarios, :enabled
  
  end

  def down
  remove_column :usuarios, :name, :string
  remove_column :usuarios, :login, :string
  remove_column :usuarios, :enabled, :string
  end
end
