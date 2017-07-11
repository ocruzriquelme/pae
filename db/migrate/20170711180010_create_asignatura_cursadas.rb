class CreateAsignaturaCursadas < ActiveRecord::Migration[5.0]
  def change
    create_table :asignatura_cursadas do |t|
      t.string :estado
      t.decimal :nota
      t.integer :semestre
      t.integer :anio
      t.integer :veces
      t.integer :asignatura_id
      t.integer :estudiante_id

      t.timestamps
    end
  end
end
