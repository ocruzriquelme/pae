class AddCorfoCodigoNumeroToRegiones < ActiveRecord::Migration[5.0]
  def change
    add_column :regiones, :corfo, :string
    add_column :regiones, :codigo, :string
    add_column :regiones, :numero, :integer
  end
end
