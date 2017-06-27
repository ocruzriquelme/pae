class AddForeingToEstudianteAndPriorizacion < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes , :priorizacion_id, :integer
    add_foreign_key :estudiantes, :priorizaciones,  column: :priorizacion_id, primary_key: :id

  end
end
