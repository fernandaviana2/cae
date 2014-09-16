class CursosController < ApplicationController
   before_filter :authenticate_usuario!
  
  def index
     @cursos = Curso.order :nome_curso
  end

  def show
    @curso = Curso.find(params[:id])
  end

  def new
    @curso = Curso.new
        
  end

  def create
    @curso = Curso.new(params[:curso])
      if @curso.save
        flash[:notice] = "Cadastro realizado com sucesso !"
         redirect_to(action: "index", id: @curso)
       else
        flash[:error] = @curso.errors.full_messages.join("<br />") 
        redirect_to(action: "new")
      end
  end

  def edit
    @curso = Curso.find(params[:id])
  end

  def update
    @curso = Curso.find params[:id]
    @curso.update_attributes params[:curso]
    if @curso.save
        flash[:notice] = "Cadastro realizado com sucesso !"
        redirect_to action: "show", id: @curso 
    else
        flash[:error] = @curso.errors.full_messages.join("<br />") 
        redirect_to(action: "edit")
    end
     
  end

  def destroy
    @curso = Curso.find(params[:id])
    @curso.destroy
    redirect_to(action: "index")
  end
end
