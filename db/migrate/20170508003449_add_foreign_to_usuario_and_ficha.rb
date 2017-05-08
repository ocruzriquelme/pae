class AddForeignToUsuarioAndFicha < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :ficha_id, :integer
    add_foreign_key :usuarios, :fichas, column: :ficha_id, primary_key: :id
  end
end
