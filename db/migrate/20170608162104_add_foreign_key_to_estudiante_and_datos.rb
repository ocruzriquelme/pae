class AddForeignKeyToEstudianteAndDatos < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :carrera_id, :integer
    add_column :estudiantes, :fecha_nacimiento, :date
    add_column :estudiantes, :priorizacion, :string
    add_column :estudiantes, :priorizacion_sin_distincion, :string
    add_column :estudiantes, :edad, :integer

    add_foreign_key :estudiantes, :carreras, column: :carrera_id, primary_key: :id
  end
end
