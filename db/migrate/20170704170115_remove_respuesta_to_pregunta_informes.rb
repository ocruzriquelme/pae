class RemoveRespuestaToPreguntaInformes < ActiveRecord::Migration[5.0]
  def change
    remove_column :pregunta_informes, :respuesta_id
    add_column :pregunta_informes, :informe_id, :integer
    add_foreign_key :pregunta_informes, :informes, column: :informe_id, primary_key: :id
  end
end
