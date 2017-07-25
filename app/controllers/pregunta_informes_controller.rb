class PreguntaInformesController < ApplicationController

  def nuevo

    @informe = Informe.find(params[:id])
    @pregunta_informe = PreguntaInforme.new(informe_id: @informe.id)
  end

  def crear
    informe_id = params[:nuevo_informe_pregunta][:informe_id]
    preguntas_id = params[:nuevo_informe_pregunta][:pregunta_id]

    preguntas_id.each do |preg|
      if !preguntas_id.empty?
        PreguntaInforme.create(informe_id: informe_id, pregunta_id: preg)
      end
    end

    respond_to do |format|
      format.html{redirect_to informe_path(Informe.find(informe_id)), notice: 'Creado'}
    end
  end

  def mostrar

    @informe = Informe.find(params[:id])
  end



end