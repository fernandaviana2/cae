module BolsistasHelper

   def options_for_curso
    Curso.all.map{|curso| [curso.nome_curso, curso.id]}
   end



end
