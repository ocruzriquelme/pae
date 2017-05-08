class AddForeignToEstudianteAndInforme < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :informe_id, :integer
    add_foreign_key :estudiantes, :informes, column: :informe_id, primary_key: :id
  end
end
