class AddForeignToComunaProvincia < ActiveRecord::Migration[5.0]
  def change
    add_column :provincias, :region_id, :integer
    add_foreign_key :provincias, :regiones, column: :region_id, primary_key: :id

    add_column :estudiantes, :comuna_id, :integer
    add_foreign_key :estudiantes, :comunas, column: :comuna_id, primary_key: :id

    add_column :comunas, :provincia_id, :integer
    add_foreign_key :comunas, :provincias, column: :provincia_id, primary_key: :id
  end
end
