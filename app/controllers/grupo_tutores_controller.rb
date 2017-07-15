class GrupoTutoresController < ApplicationController

  def index
    @grupo_tutores = GrupoTutor.all
  end

  def nuevo
    @grupo_tutores = GrupoTutor.new
  end
  def crear
    @grupo_tutores = GrupoTutor.new(grupo_tutores_params)

    respond_to do |format|
      if @grupo_tutores.save
        format.html { redirect_to @grupo_tutores, notice: 'Grupo creado exitosamente' }
      else
        format.html { render action: 'nuevo' }
      end
    end
  end
  def mostrar
    @grupo_tutores = GrupoTutor.find(params[:id])
  end
  def editar
    @grupo_tutores = GrupoTutor.find(params[:id])
  end

  def eliminar
    @grupo_tutores.destroy
    respond_to do |format|
      format.html {redirect_to @grupo_tutores, notice:'Se ha eliminado el grupo'}
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
