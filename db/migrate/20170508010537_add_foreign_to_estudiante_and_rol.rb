class AddForeignToEstudianteAndRol < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes, :rol_id, :integer
    add_foreign_key :estudiantes, :roles, column: :rol_id, primary_key: :id
  end
end
