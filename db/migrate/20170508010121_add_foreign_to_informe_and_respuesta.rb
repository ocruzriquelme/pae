class AddForeignToInformeAndRespuesta < ActiveRecord::Migration[5.0]
  def change
    add_column :informes, :respuesta_id, :integer
    add_foreign_key :informes, :respuestas, column: :respuesta_id, primary_key: :id

    add_column :respuestas, :pregunta_id, :integer
    add_foreign_key :respuestas, :preguntas, column: :pregunta_id, primary_key: :id
  end
end
