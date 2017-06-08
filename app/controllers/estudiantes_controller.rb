class EstudiantesController < ApplicationController
  before_action :set_estudiante,only:[:mostrar, :editar, :eliminar, :update]


  def mostrar

  end
  def editar

  end
  def eliminar

  end
  def update

  end
  def index

  end
  def nuevo

  end
  private

  def estudiante_params
    params.require(:estudiante).permit(:rut, :nombres, :apellidos, :email, :direccion, :rol_id, :comuna_id, :carrera_id, :fecha_nacimiento, :priorizacion, :priorizacion_sin_distincion, :edad)
  end

  def set_estudiante
    @estudiante=Estudiante.find(params[:id])
  end
end
