class CreateGrupoTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_tutores do |t|
      t.integer :estudiante_id

      t.timestamps
    end
  end
end
