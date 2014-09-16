module BolsasHelper
  def options_for_setor
    Setor.all.map{|setor| [setor.nome_setor, setor.id]}
  end
end
