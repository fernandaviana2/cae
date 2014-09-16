class Curso < ActiveRecord::Base
  has_many :bolsistas
  
  attr_accessible :nome_curso, :numero_periodo
  
  validates_presence_of :nome_curso, :numero_periodo
  
  validates_numericality_of :numero_periodo
  
  
end
