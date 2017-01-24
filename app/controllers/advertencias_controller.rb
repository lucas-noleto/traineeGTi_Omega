class AdvertenciasController < ApplicationController
  def index
    
    @advertencias = Advertencia.order("advdata").page(params['page']).per(10)

  end

  def new
   @membros = Membro.order :name

      @advertencia = Advertencia.new
    if params[:membro]
    @advertencia.membro = Membro.find(params[:membro])
  end
  end

  def show
    @advertencia = Advertencia.find(params[:id])
  end

  def destroy
    @advertencia = Advertencia.find(params[:id])
    @advertencia.destroy
    
    redirect_to(action: "index")
      
end

def advertencia_params
   params.require(:advertencia).permit(:membro_id, :advdata, :reason)
  end


  
  def create
    
    @advertencia = Advertencia.new(advertencia_params)
    respond_to do |format|
    if @advertencia.save
      format.html { redirect_to @advertencia,
        notice: 'Advertencia foi criada com sucesso' }
      format.json { render json: @advertencia,
        status: :created, location: @advertencia }
    else
      @membros = Membro.order :name
      format.html { render action: "novo" }
      format.json { render json: @advertencia.errors, status: :unprocessable_entity }
    end
  end
  end


  def edit
    @advertencia = Advertencia.find(params[:id])
    @membros = Membro.order :name
  end

  def update

    @advertencia = Advertencia.find(params[:id])
  respond_to do |format|
    if @advertencia.update_attributes(params.require(:advertencia).permit(:membro_id, :advdata, :reason))
      format.html { redirect_to @advertencia,
        notice: 'Advertencia foi editada com sucesso.' }
      format.json { head :no_content }
    else
     @membros = Membro.order :name
      format.html { render action: "editar" }
      format.json { render json: @advertencia.errors,
        status: :unprocessable_entity }
    end
  end
end 
end
