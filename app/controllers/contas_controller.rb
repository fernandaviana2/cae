class ContasController < ApplicationController
 before_filter :authenticate_usuario!
  def index
     @contas = Conta.order :numero_agencia
  end

  def show
    @conta = Conta.find(params[:id])
  end

  def new
  
    @bolsista = Bolsista.find(params[:bolsista_id])
    @conta = @bolsista.build_conta(params[:conta])
  end

  def create
    @bolsista = Bolsista.find(params[:bolsista_id])
    @conta = @bolsista.build_conta(params[:conta])
      if @conta.save
        flash[:notice] = "Cadastro realizado com sucesso !"
        redirect_to(action: 'show', id: @bolsista, controller: 'bolsistas' )
       else
        flash[:error] = @conta.errors.full_messages.join("<br />")
        redirect_to(action: "new", bolsista_id: params[:bolsista_id], conta: params[:conta] )
      end
  end

  def edit
    @conta = Conta.find(params[:id])
    @conta.attributes = @conta.attributes.merge(params[:conta]) if params.has_key?(:conta)
  end

  def update
    @conta = Conta.find params[:id]
    if @conta.update_attributes(params[:conta])
      flash[:notice] = "Cadastro realizado com sucesso !"
      redirect_to(action: 'show', id: @conta.bolsista, controller: 'bolsistas' )
    else
      flash[:error] = @conta.errors.full_messages.join("<br />")
      redirect_to(action: "edit", id: @conta, bolsista_id: params[:bolsista_id], conta: params[:conta] )
    end
  end

  def destroy
    @conta = Conta.find(params[:id])
    @conta.destroy
    redirect_to(action: "index")
  end
end
