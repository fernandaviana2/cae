class BolsasController < ApplicationController
  before_filter :authenticate_usuario!
#  def index
#     @bolsas = Bolsa.order :data_entrada
#  end

  def show
    @bolsa = Bolsa.find(params[:id])
    
  end

  def new
      @bolsa = Bolsa.new(params[:bolsa] || {:bolsista_id => params[:bolsista_id]}) #
    
  end

  def create
    @bolsa = Bolsa.new(params[:bolsa])
     if @bolsa.save
      flash[:notice] = "Cadastro realizado com sucesso!"
      redirect_to(action: "show", controller: "bolsistas", id: @bolsa.bolsista)
     else
       flash[:error] = @bolsa.errors.full_messages.join("<br />") 
       redirect_to(action: "new", bolsa: params[:bolsa]) #  
       
     end   
  end

  def edit
    @bolsa = Bolsa.find(params[:id])
  end

  def update
    @bolsa = Bolsa.find params[:id]
    @bolsa.update_attributes params[:bolsa]
    if @bolsa.save
      flash[:notice] = "Cadastro realizado com sucesso!"
      redirect_to action: "show", controller: "bolsistas", id: @bolsa.bolsista  
    else
       flash[:error] = @bolsa.errors.full_messages.join("<br />") 
       redirect_to(action: "edit", bolsa: params[:bolsa]) #  
    end
  end

  def destroy
    @bolsa = Bolsa.find(params[:id])
    @bolsa.destroy
    redirect_to(action: "index")
  end
  
  def edit_finalizar_bolsa
    @bolsa = Bolsa.find(params[:id])
    @bolsa.attributes = @bolsa.attributes.merge(params[:bolsa]) if params.has_key?(:bolsa)
  end
  
  
   def finalizar_bolsa
     @bolsa = Bolsa.find(params[:id])
     if @bolsa.finalizar_bolsa params[:bolsa]
       flash[:notice] = "Bolsa finalizada com sucesso!"
       redirect_to action: "show", controller: "bolsistas", id: @bolsa.bolsista  
     else
       flash[:error] = @bolsa.errors.full_messages.join("<br />")
       redirect_to(action: "edit_finalizar_bolsa", bolsa: params[:bolsa], id: @bolsa) #  
     end
   end
end
