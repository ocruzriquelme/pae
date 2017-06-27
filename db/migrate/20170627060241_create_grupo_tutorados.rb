class CreateGrupoTutorados < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_tutorados do |t|
      t.integer :estudiante_id
      t.integer :grupo_tutor_id

      t.timestamps
    end
  end
end
