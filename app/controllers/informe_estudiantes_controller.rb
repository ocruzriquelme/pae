class InformeEstudiantesController < ApplicationController
  def index
    @informe_estudiantes = InformeEstudiante.all
  end

  def nuevo
    @informe_estudiantes = InformeEstudiante.new
  end

  def crear
    informe = params()
    informe_id = informe['nueva_informe_estudiante']['informe_id']
    estudiante_id = informe['nueva_informe_estudiante']['estudiante_id']
    fecha = informe['fecha']
    estado = informe['estado']
    estudiante_id.each do |estudiante|
      if !estudiante.empty?
        InformeEstudiante.create(informe_id: informe_id, estudiante_id: estudiante, fecha: fecha, estado: estado)
      end
    end

    respond_to do |format|
      format.html{redirect_to informeestudiantes_path(informe_id), notice: 'Grupo creado'}
      end
    end

  end

  def mostrar
    estudiante_id = params[:id]
    @estudiante = Estudiante.find(estudiante_id)
  end

  def editar
    @informe_estudiantes = InformeEstudiante.find(params[:id])
  end

  def eliminar
    @informe_estudiantes.destroy
    respond_to do |format|
      format.html {redirect_to @informe_estudiantes, notice:'Se ha eliminado el grupo'}
    end
  end

  def update
    respond_to do |format|
      if @informe_estudiantes.update(estudiante_params)
        format.html {redirect_to @informe_estudiantes, notice:'Se ha editado el grupo'}
      else
        format.html {render :editar}
      end
    end
  end


  private
  def set_informe_estudiantes
    @informe_estudiantes = InformeEstudiante.find(params[:id])
  end

  def informe_estudiante_params
    params.require(:informe_estudiante).permit(:estado, :fecha, :nombre,
                                        estudiante_attributes: [:id, :estudiante_id, :grupo_tutor_id, :done, :_destroy])
  end

