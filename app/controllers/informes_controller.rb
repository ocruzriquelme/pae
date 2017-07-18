class InformesController < ApplicationController

  def index
    @informe = Informe.all
  end

  def mostrar
    @informe = Informe.find(params[:id])
  end

  def editar
    @informe = Informe.find(params[:id])
  end

  def nuevo
    @informe = Informe.new
  end

  def update
    respond_to do |format|
      if @informe.update(informe_params)
        format.html {redirect_to @informe, notice:'Se ha editado el informe'}
      else
        format.html {render :editar}
      end
    end
  end

  def eliminar
    @informe.destroy
    respond_to do |format|
      format.html {redirect_to @informe, notice:'Se ha eliminado el informe'}
    end
  end

  private
  def set_informe
    @pregunta = Pregunta.find(params[:id])
  end

  def informe_params
    params.require(:informe).permit(:nombre)
  end

end