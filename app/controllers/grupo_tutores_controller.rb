class GrupoTutoresController < ApplicationController


  def index
    @estudiantes = Estudiante.where(rol_id: Rol.find_by_nombres('Tutor'))
  end

  def nuevo
    @grupo_tutores = GrupoTutor.new
  end

  def crear
    estudiante_id=  params()[:nuevo_grupo_tutor][:estudiante_id] # Tutor
    grupo_tutorado = GrupoTutor.create(estudiante_id: estudiante_id)
    respond_to do |format|
      format.html{redirect_to nuevo_grupo_tutorado_path(grupo_tutorado.id), notice: 'Grupo creado'}
    end

  end

  def mostrar
    estudiante_id = params[:id]

     @estudiante = Estudiante.find(estudiante_id)


  end

  def editar
    @grupo_tutores = GrupoTutor.find(params[:id])
  end

  def eliminar
    @grupo_tutores.destroy(grupo_tutores_params)
    respond_to do |format|
      format.html {redirect_to @grupo_tutores, notice:'Se ha eliminado el grupo'}
    end
  end

  def update
    respond_to do |format|
      if @grupo_tutores.update(estudiante_params)
        format.html {redirect_to @grupo_tutores, notice:'Se ha editado el grupo'}
      else
        format.html {render :editar}
      end
    end
  end


  private
  def set_grupo_tutores
    @grupo_tutores = GrupoTutor.find(params[:id])
  end

  def grupo_tutores_params
    params.require(:grupo_tutor).permit(:estudiante_id,
                                        grupo_tutorados_attributes: [:id, :estudiante_id, :grupo_tutor_id, :done, :_destroy])
  end

end
