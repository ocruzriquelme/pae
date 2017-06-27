class RemoveTableGrupoTutorias < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :grupo_tutoria_id
    drop_table :grupo_tutorias
  end
end
