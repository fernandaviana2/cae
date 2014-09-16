class RequisicaosController < ApplicationController
   before_filter :authenticate_usuario!
   
  def index
     @requisicaos = Requisicao.order :documento
  end

  def show
    @requisicao = Requisicao.find(params[:id])
  end

  def new
    @requisicao = Requisicao.new
        
  end

  def create
    @requisicao = Requisicao.new(params[:requisicao])
      if @requisicao.save
       flash[:notice] = "Cadastro realizado com sucesso !"
       redirect_to(action: "show", id: @requisicao)
     else
      flash[:error] = @requisicao.errors.full_messages.join("<br />") 
        redirect_to(action: "new")
     end  
  end

  def edit
    @requisicao = Requisicao.find(params[:id])
  end

  def update
    @requisicao = Requisicao.find params[:id]
    @requisicao.update_attributes params[:requisicao]
     if @requisicao.save
       flash[:notice] = "Cadastro realizado com sucesso !"
       redirect_to action: "show", id: @requisicao 
     else
      flash[:error] = @requisicao.errors.full_messages.join("<br />") 
       redirect_to(action: "edit")
     end   
  end

  def destroy
    @requisicao = Requisicao.find(params[:id])
    @requisicao.destroy
    redirect_to(action: "index")
  end
  
  
end
