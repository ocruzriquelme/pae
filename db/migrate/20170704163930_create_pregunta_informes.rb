class CreatePreguntaInformes < ActiveRecord::Migration[5.0]
  def change
    create_table :pregunta_informes do |t|
      t.integer :pregunta_id
      t.integer :respuesta_id




      t.timestamps
    end

    add_foreign_key :pregunta_informes, :preguntas, column: :pregunta_id, primary_key: :id
    add_foreign_key :pregunta_informes, :respuestas, column: :respuesta_id, primary_key: :id

  end
end
