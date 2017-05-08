class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.integer :rut
      t.string :nombres
      t.string :apellidos
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
