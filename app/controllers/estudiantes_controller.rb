class EstudiantesController < ApplicationController
  before_action :set_estudiante,only:[:mostrar, :editar, :eliminar, :update]

  def index
    @estudiante = Estudiante.all
  end
  def crear
    @estudiante = Estudiante.new(estudiante_params)
    respond_to do |format|
      if @estudiante.save
        format.html {redirect_to @estudiante, notice: 'Fue creado con mucho exito'}
      else
        format.html {render :nuevo}
      end
    end
  end

  def mostrar
    @estudiante = Estudiante.find(params[:id])
  end

  def editar
    @estudiante = Estudiante.find(params[:id])
  end

  def eliminar
    @estudiante.destroy
    respond_to do |format|
      format.html {redirect_to @estudiante, notice:'Se ha eliminado al estudiante'}
    end
  end
  def update
    respond_to do |format|
      if @estudiante.update(estudiante_params)
        format.html {redirect_to @estudiante, notice:'Se ha editado el estudiante'}
      else
        format.html {render :editar}
      end
    end
  end

  def nuevo
    @estudiante = Estudiante.new
  end
  private
  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end

  def estudiante_params
    params.require(:estudiante).permit(:rut, :nombres, :apellidos, :email, :direccion, :rol_id, :comuna_id, :carrera_id, :fecha_nacimiento, :priorizacion, :priorizacion_sin_distincion, :edad)
  end


end
