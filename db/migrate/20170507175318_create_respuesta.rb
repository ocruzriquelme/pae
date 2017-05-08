class CreateRespuesta < ActiveRecord::Migration[5.0]
  def change
    create_table :respuestas do |t|
      t.string :pregunta
      t.string :informe
      t.string :respuesta
      t.string :tutorado

      t.timestamps
    end
  end
end
