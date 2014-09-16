class BolsistasController < ApplicationController
   before_filter :authenticate_usuario!
    
  def index
     @bolsistas = Bolsista.order :nome
  end

  def show
    @bolsista = Bolsista.find(params[:id])
    
  end

  def new
    @bolsista = Bolsista.new(params[:bolsista])
    
        
  end

  def create
    @bolsista = Bolsista.new(params[:bolsista])
    if @bolsista.save
      flash[:notice] = "Cadastro realizado com sucesso!"
      redirect_to(action: "bolsista_curso", id: @bolsista)
    else
      flash[:error] = @bolsista.errors.full_messages.join("<br />")
      redirect_to(action: "new", bolsista: params[:bolsista])
    end
  end

  def edit
    @bolsista = Bolsista.find(params[:id])
    
  end

  def update
    @bolsista = Bolsista.find params[:id]
    if @bolsista.update_attributes (params[:bolsista])
     flash[:notice] = "Cadastro realizado com sucesso!"
      redirect_to action: "show", id: @bolsista  
    else
      flash[:error] = @bolsista.errors.full_messages.join("<br />")
      redirect_to(action: "edit", bolsista: params[:bolsista])
    end
    
  end

  def destroy
    @bolsista = Bolsista.find(params[:id])
    @bolsista.destroy
    redirect_to(action: "index")
  end
  
   def bolsista_curso
    @bolsista = Bolsista.find(params[:id])
    @curso = @bolsista.curso
    redirect_to(action: "show", id: @bolsista)
   end
   
   def edit_bolsista_curso
     @bolsista = Bolsista.find(params[:id])
     @curso = @bolsista.curso
   end
  
  def new_anexo
    @bolsista = Bolsista.find(params[:id])
      1.times { @bolsista.anexos.build }
      
    
  end   
     
     
   def edit_anexo
     @bolsista = Bolsista.find(params[:id])
      1.times { @bolsista.anexos.build }
    end
    
    
     
   end

