class BancosController < ApplicationController
   before_filter :authenticate_usuario!
  
   
  def index
     @bancos = Banco.order :nome_banco
  end

  def show
    @banco = Banco.find(params[:id])
    
  end

  def new
    @banco = Banco.new
        
  end

  def create
    @banco = Banco.new(params[:banco])
     if @banco.save
       flash[:notice] = "Cadastro realizado com sucesso !"
        redirect_to(action: "show", id: @banco)
     else
      flash[:error] = @banco.errors.full_messages.join("<br />") 
        redirect_to(action: "new")
    end
 end 

  def edit
    @banco = Banco.find(params[:id])
  end

  def update
    @banco = Banco.find params[:id]
    @banco.update_attributes params[:banco]
     if @banco.save
       flash[:notice] = "Cadastro realizado com sucesso !"
       redirect_to action: "show", id: @banco  
    else
      flash[:error] = @banco.errors.full_messages.join("<br />") 
        redirect_to(action: "edit")
    end
 
  end

  def destroy
    @banco = Banco.find(params[:id])
    @banco.destroy
    redirect_to(action: "index")
  end
end
