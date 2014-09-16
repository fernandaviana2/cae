class Requisicao < ActiveRecord::Base
  belongs_to :setor
  
  attr_accessible :assunto,:conteudo, :data_requisicao, :documento, :horario_bolsista, :nome_de_bolsista, :quantidade_bolsista , :setor_id, :setor_emissor 
  
  
  validates_presence_of  :documento, :setor_emissor, :data_requisicao, :assunto, :conteudo
  
  
  
end
