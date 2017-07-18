class CreateInformeEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :informe_estudiantes do |t|
      t.integer :estado
      t.date :fecha
      t.integer :estudiante_id
      t.integer :informe_id

      t.timestamps
    end
  end
end
