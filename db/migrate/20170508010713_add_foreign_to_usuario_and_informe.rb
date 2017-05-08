class AddForeignToUsuarioAndInforme < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :informe_id, :integer
    add_foreign_key :usuarios, :informes, column: :informe_id, primary_key: :id
  end
end
