class CreatePregunta < ActiveRecord::Migration[5.0]
  def change
    create_table :preguntas do |t|
      t.string :pregunta

      t.timestamps
    end
  end
end
