class AddIngresosToEstudiantes < ActiveRecord::Migration[5.0]
  def change
    add_column :estudiantes,:ingreso, :integer
  end
end
