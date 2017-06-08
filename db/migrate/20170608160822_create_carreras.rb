class CreateCarreras < ActiveRecord::Migration[5.0]
  def change
    create_table :carreras do |t|
      t.integer :codigo
      t.string :nombre
      t.integer :duracion
      t.string :jefe_carrera
      t.string :regimen
      t.string :escuela

      t.timestamps
    end
  end
end
