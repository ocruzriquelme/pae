class PreguntaInformesController < ApplicationController

  def nuevo
    @preguntas = Pregunta.new(informe_id: params[:id])
    @informes = Informe.find(params[:id])
  end

  def crear
    informe_id = params[:nuevo_informe_pregunta][:informe_id]
    preguntas_id = params[:nuevo_informe_pregunta][:preguntas_id]

    preguntas_id.each do |preg|
      if !preguntas_id.empty?
        Pregunta.create(informe_id: informe_id, preguntas_id: preg)
      end
    end

    respond_to do |format|
      format.html{redirect_to preguntainforme_path(informe_id), notice: 'Creado'}
    end
  end

  def mostrar

    @informe = Informe.find(params[:id])
  end



end