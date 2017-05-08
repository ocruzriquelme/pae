class AddForeignToUsuarioAndGrupoTutoria < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :grupo_tutoria_id, :integer
    add_foreign_key :usuarios, :grupo_tutorias, column: :grupo_tutoria_id, primary_key: :id

    add_column :grupo_tutorias, :estudiante_id, :integer
    add_foreign_key :grupo_tutorias, :estudiantes, column: :estudiante_id, primary_key: :id
  end
end
