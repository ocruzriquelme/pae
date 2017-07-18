class AddForeignKeyToInformeEstudiante < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :informe_estudiantes, :estudiantes,  column: :estudiante_id, primary_key: :id

    add_foreign_key :informe_estudiantes, :informes,  column: :informe_id, primary_key: :id

        remove_column :informes, :estado
        remove_column :informes, :fecha
        remove_column :informes, :estudiante_id
        remove_column :estudiantes, :asignatura_cursada_id

  end
end
