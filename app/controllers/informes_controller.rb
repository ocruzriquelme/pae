class InformesController < ApplicationController

  def index
    @informe = Informe.all
  end

  def nuevo
    @informe = Informe.new
  end
I
  def crear
    informe_id = params()[:nuevo_informe][:informe_id]

    informe = Informe.create(nombre: informe_id)
    respond_to do |format|
      format.html{redirect_to informes_path(informe.id), notice: 'Informe Creado'}
    end
  end

  def mostrar
    @informes = Informe.find(params[:id])
  end

  def editar
    @informes = Informe.find(params[:id])
  end

  def eliminar
    @informe.destroy(pregunta_informe_params)
    respond_to do |format|
      format.html {redirect_to @pregunta_informe, notice:'Se el informe'}
    end
  end

  def update
    respond_to do |format|
      if @informes.update(pregunta_informe_params)
        format.html {redirect_to @pregunta_informe, notice:'Se ha editado el informe'}
      else
        format.html {render :editar}
      end
    end
  end

  private
  def set_informe
    @informe = Informe.find(params[:id])
  end

  def informe_params
    params.require(:informe).permit(:nombre)
  end
    

end