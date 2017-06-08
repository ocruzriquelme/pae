class AddNombreToRegion < ActiveRecord::Migration[5.0]
  def change
    add_column :regiones, :nombre, :string
  end
end
