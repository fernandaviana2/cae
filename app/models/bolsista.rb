class Bolsista < ActiveRecord::Base
    
    belongs_to :curso
    has_one :conta
    has_many :bolsas
    has_many :anexos, :dependent => :destroy
    accepts_nested_attributes_for :anexos, :allow_destroy => true
    
        
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x250>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

                  attr_accessible :ano_inicial_curso, :bairro, :cidade, :cpf, :complemento, :email, :endereco, :estado, :matricula, :nome, :nome_mae, :numero_pasta, :observacao, :rg, :semestre_inicial_curso, :tel_celular, :tel_residencial,
:data , :curso_id, :conta_id, :periodo_atual, :anexo_id, :anexos
                                                                                                                                  
validates_presence_of  :cpf, :matricula, :numero_pasta, :nome, :endereco, :complemento, :bairro, :cidade, :estado, :tel_residencial, :tel_celular, :email, :rg, :data, :nome_mae, :curso



  validates_uniqueness_of :cpf
  
  validates_numericality_of  :matricula, :numero_pasta, :rg
   
   	
   validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
  
  
  
   def nome_banco
     if self.conta.present? && self.conta.banco.present?
       self.conta.banco.nome_banco
     else
       ""
     end  
   end

  def permite_cadastro_bolsa?
    if self.bolsas.select{|b| b.situacao?}.any?
      return false
    else
      return true
    end 
  end

  


end
