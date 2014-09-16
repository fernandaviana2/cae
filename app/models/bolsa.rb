#coding:utf-8
class Bolsa < ActiveRecord::Base
   
   belongs_to :bolsista
   belongs_to :setor
   
   
    attr_accessible :atribuicoes, :campu, :data_entrada, :data_saida, :horario_atuacao, :situacao, :motivo, :bolsista_id, :setor_id, :id, :created_at, :updated_at

    validates_presence_of  :setor_id, :data_entrada, :horario_atuacao, :campu, :atribuicoes, :situacao, :bolsista_id

  def situacao?
    if self.situacao == "Ativo"
      return true
    elsif self.situacao == "Inativo" || self.situacao.nil?
      return false
    end
  end
   
  def data_saida_nao_pode_ser_nulo
    if self.data_saida.empty?
      self.errors.add(:data_saida, "não pode ficar vazio")
    end
  end

  def motivo_nao_pode_ser_nulo
    if self.motivo.empty?
      self.errors.add(:motivo, "não pode ficar vazio")
    end
  end
  
  def verificar_presenca_campos_obrigatorios
    self.data_saida_nao_pode_ser_nulo
    self.motivo_nao_pode_ser_nulo
  end

  def finalizar_bolsa params = {}
    self.attributes = self.attributes.merge(params)
    self.verificar_presenca_campos_obrigatorios
    if self.errors.empty?
      self.update_attributes(params[:bolsa])
      return true
    else
      return false
    end
  end
     
     
     
   
end
