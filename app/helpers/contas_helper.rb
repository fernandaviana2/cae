module ContasHelper

  def options_for_banco
    [" "] + Banco.all.map{|banco| [banco.nome_banco, banco.id]}
   end
end
