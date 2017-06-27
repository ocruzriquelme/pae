require 'sepa_api'

class EstudiantesController < ApplicationController
  before_action :set_estudiante,only:[:mostrar, :editar, :eliminar, :update]

  def index
    @index = 'index'
    @estudiantes = Estudiante.all
  end
  def crear
    require 'rut_chileno'
    rut = params['estudiante']['rut']
    sepa = SepaApi.new()
    @estudiante = sepa.getEstudiante(rut)
    @estudiante.rol_id = (Rol.find_by_nombres('Tutorado')).id
    @estudiante.priorizacion_id = (Priorizacion.find_by_nombre('No priorizado')).id
    respond_to do |format|
      if @estudiante.save
        format.html {redirect_to editar_estudiante_path(@estudiante), notice: 'Fue creado con mucho exito'}
      else
        format.html {render :editar}
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
  def tutores
    @index = 'no index'
    @estudiantes = Estudiante.where(rol_id: (Rol.find_by_nombres('Tutor')).id).paginate(:page => params[:page], :per_page => 12)
    respond_to do |format|
      format.html{ render :template => "/estudiantes/index"}
    end
  end

  def tutorados
    @index = 'no index'
    @estudiantes = Estudiante.where(rol_id: (Rol.find_by_nombres('Tutorado')).id).paginate(:page => params[:page], :per_page => 12)
    respond_to do |format|
      format.html{ render :template => "/estudiantes/index"}
    end
  end

  private
  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end

  def estudiante_params
    params.require(:estudiante).permit(:rut, :nombres, :apellidos, :email, :direccion,:priorizacion_id, :rol_id, :comuna_id, :carrera_id, :fecha_nacimiento,  :edad)
  end


end
