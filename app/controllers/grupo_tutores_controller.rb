class GrupoTutoresController < ApplicationController

  def index
    @grupo_tutores = GrupoTutor.all
  end

  def nuevo
    @grupo_tutor = GrupoTutor.new
  end
end
