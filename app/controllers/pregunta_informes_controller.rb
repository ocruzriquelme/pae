class PreguntaInformesController < ApplicationController

  def index
    @informe = Informe.all
  end

  def nuevo
    @informe = Informe.new
  end


  def crear
    informe_id = params[:nuevo_informe][:informe_id]

    informe = Informe.create(informe_id: informe_id)
    respond_to do |format|
      format.html{redirect_to informe_path(informe.id), notice: 'Informe Creado'}
    end
  end

  def mostrar
    @informe = Informe.find(params[:id])
  end

  def editar
    @informe = Informe.find(params[:id])
  end

  def eliminar
    @informe.destroy(pregunta_informe_params)
    respond_to do |format|
      format.html {redirect_to @informe, notice:'Se el informe'}
    end
  end

  def update
    respond_to do |format|
      if @informe.update(pregunta_informe_params)
        format.html {redirect_to @informe, notice:'Se ha editado el informe'}
      else
        format.html {render :editar}
      end
    end
  end

  private
  def set_pregunta_informe
    @informe = Informe.find(params[:id])
  end

  def pregunta_informe_params
    params.require(:pregunta_informe).permit(:informe_id,
                                        preguntas_attributes: [:id, :pregunta, :done, :_destroy])
  end

end
