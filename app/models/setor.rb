class Setor < ActiveRecord::Base
  
  has_many :requisicaos
  
  has_many :bolsas
  
  attr_accessible :coordenador, :email_setor, :nome_setor,  :ramal
  
  validates_presence_of   :nome_setor,:coordenador, :email_setor, :ramal  
  
  validates_numericality_of   :ramal  
  
  validates_format_of :email_setor, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
end
