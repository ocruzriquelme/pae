class InformesController < ApplicationController
  def _form
  end

  def index
  end

  def mostrar
  end

  def editar
  end



  def nuevo
    @informe = Informe.new
    3.times do
      pregunta = @informes.preguntas.build
      4.times { pregunta.respuestas.build }
    end
  end



  def update
  end

  def eliminar
  end
end
