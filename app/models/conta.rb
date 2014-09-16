class Conta < ActiveRecord::Base
  belongs_to :bolsista
  belongs_to :banco
   
  attr_accessible :numero_agencia, :numero_conta, :conta_id, :banco_id, :bolsista_id, :updated_at, :created_at

  validates_presence_of :numero_agencia, :numero_conta, :banco_id
  
  validates_numericality_of :numero_agencia, :numero_conta
 
  validates_uniqueness_of :numero_conta
end
