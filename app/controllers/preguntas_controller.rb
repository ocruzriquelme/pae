class PreguntasController < ApplicationController
  before_action :set_pregunta, only: [:pregunta,:editar, :mostrar, :update ,:eliminar]

  def index
    @pregunta = Pregunta.all
  end

  def mostrar
    @pregunta = Pregunta.find(params[:id])
  end

  def editar
    @pregunta = Pregunta.find(params[:id])
  end

  def update
    respond_to do |format|
      if @pregunta.update(pregunta_params)
        format.html {redirect_to @pregunta, notice: 'Se ha editado la pregunta'}
      else
        format.html {render :editar}
      end
    end
  end


  def crear
    @pregunta = Pregunta.new(pregunta_params)
    respond_to do |format|
      if @pregunta.save
        format.html {redirect_to pregunta_path(@pregunta), notice: 'Se creo pregunta'}
      else
        format.html {render :nuevo}
      end
    end
  end


  def nuevo
    @pregunta = Pregunta.new
  end

  def eliminar
    @pregunta.destroy
    respond_to do |format|
      format.html {redirect_to @pregunta, notice: 'Se ha eliminado la pregunta'}
    end
  end

  private
  def set_pregunta
    @pregunta = Pregunta.find(params[:id])
  end

  def pregunta_params
    params.require(:pregunta).permit(:pregunta)
  end

end

