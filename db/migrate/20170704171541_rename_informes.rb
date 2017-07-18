class RenameInformes < ActiveRecord::Migration[5.0]
  def change
    change_column :informes, :tutor, 'integer using cast (tutor as integer)'
    rename_column :informes, :grupo_tutor, :estudiante_id
    add_foreign_key :informes, :estudiantes, column: :estudiante_id, primary_key: :id
  end
end
