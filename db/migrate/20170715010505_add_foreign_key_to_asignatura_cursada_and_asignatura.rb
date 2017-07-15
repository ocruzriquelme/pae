class AddForeignKeyToAsignaturaCursadaAndAsignatura < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes , :asignatura_cursada_id, :integer
    add_foreign_key :estudiantes, :asignatura_cursadas,  column: :asignatura_cursada_id, primary_key: :id
    add_foreign_key :asignatura_cursadas, :asignaturas,  column: :asignatura_id, primary_key: :id


  end
end
