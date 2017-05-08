class CreateGrupoTutoria < ActiveRecord::Migration[5.0]
  def change
    create_table :grupo_tutorias do |t|
      t.string :coordinador
      t.string :tutor
      t.string :tutorado

      t.timestamps
    end
  end
end
