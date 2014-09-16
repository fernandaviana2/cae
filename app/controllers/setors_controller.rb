class SetorsController < ApplicationController
 before_filter :authenticate_usuario!
  def index
     @setors = Setor.order :nome_setor
  end

  def show
    @setor = Setor.find(params[:id])
  end

  def new
    @setor = Setor.new
        
  end

  def create
    @setor = Setor.new(params[:setor])
     if @setor.save
      flash[:notice] = "Cadastro realizado com sucesso !"
       redirect_to(action: "show", id: @setor)
      else
      flash[:error] = @setor.errors.full_messages.join("<br />") 
        redirect_to(action: "new") 
     end  
  end

  def edit
    @setor = Setor.find(params[:id])
  end

  def update
    @setor = Setor.find params[:id]
    @setor.update_attributes params[:setor]
    if @setor.save
      flash[:notice] = "Cadastro realizado com sucesso !"
      redirect_to action: "show", id: @setor  
    else
      flash[:error] = @setor.errors.full_messages.join("<br />") 
      redirect_to(action: "edit") 
    end  
  end

  def destroy
    @setor = Setor.find(params[:id])
    @setor.destroy
    redirect_to(action: "index")
  end
  
  
end
