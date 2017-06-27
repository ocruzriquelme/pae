class AddForeignGruposT < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :grupo_tutores, :estudiantes ,column: :estudiante_id, primary_key: :id
    add_foreign_key :grupo_tutorados, :estudiantes ,column: :estudiante_id, primary_key: :id
    add_foreign_key :grupo_tutorados, :grupo_tutores ,column: :grupo_tutor_id, primary_key: :id
  end
end
