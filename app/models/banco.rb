class Banco < ActiveRecord::Base
  has_many :contas
  
  attr_accessible  :numero_banco, :nome_banco
   
  validates_presence_of  :numero_banco, :nome_banco
  
  validates_numericality_of :numero_banco 

  
  
  
end
