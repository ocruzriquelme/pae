class RenameRespuestas < ActiveRecord::Migration[5.0]
  def change
    change_column :respuestas, :tutorado, 'integer using cast (tutorado as integer)'
    rename_column :respuestas, :tutorado, :estudiante_id
    add_foreign_key :respuestas, :estudiantes, column: :estudiante_id, primary_key: :id
  end
end
