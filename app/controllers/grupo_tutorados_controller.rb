class GrupoTutoradosController < ApplicationController
  def nuevo
    @tutorado = GrupoTutorado.new(grupo_tutor_id: params[:id])
    @grupo_tutor = GrupoTutor.find(params[:id])
  end

  def crear
    grupo_tutor_id = params[:nuevo_grupo_tutorado][:grupo_tutor_id]
    estudiantes_id = params[:nuevo_grupo_tutorado][:estudiante_id]

    estudiantes_id.each do |estudiante_id|
      if !estudiante_id.empty?
        GrupoTutorado.create(grupo_tutor_id: grupo_tutor_id, estudiante_id: estudiante_id)
      end
    end

    respond_to do |format|
      format.html{redirect_to grupo_tutorado_path(grupo_tutor_id), notice: 'Grupo creado'}
    end
  end

  def mostrar

    @grupo_tutor = GrupoTutor.find(params[:id])
  end



end
