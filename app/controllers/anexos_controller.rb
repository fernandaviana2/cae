class AnexosController < ApplicationController
  before_filter :authenticate_usuario! 
  
  def index
    @bolsista = Bolsista.find(params[:bolsista_id]) 
    @anexos = @bolsista.anexos.all
  end

  def show
    @bolsista = Bolsista.find(params[:bolsista_id]) 
    @anexo = @bolsista.anexos.find(params[:id])
  end

  def new
    @bolsista = Bolsista.find(params[:bolsista_id])
    @anexo = Anexo.new(params[:anexo])
  end

  def create
     @bolsista = Bolsista.find(params[:bolsista_id])
     @anexo = @bolsista.anexos.new(params[:anexo])
      if @anexo.save
        flash[:notice] = "Documento anexado com sucesso !"
         redirect_to(action: "show", id: @anexo)
       else
        flash[:error] = @anexo.errors.full_messages.join("<br />") 
        redirect_to(action: "new")
      end
  end

  def edit
    @anexo = Anexo.find(params[:id])
  end

  def update
    @anexo = Anexo.find params[:id]
    @anexo.update_attributes params[:anexo]
    if @anexo.save
        flash[:notice] = "Documento anexado com sucesso !"
        redirect_to action: "show", id: @anexo
    else
        flash[:error] = @anexo.errors.full_messages.join("<br />") 
        redirect_to(action: "edit")
    end
    
  end

  def destroy
    @bolsista = Bolsista.find(params[:bolsista_id])
    @anexo = @bolsista.anexos.find(params[:id])
    @anexo.destroy
    redirect_to bolsista_anexos_url(@bolsista)
  end
end
