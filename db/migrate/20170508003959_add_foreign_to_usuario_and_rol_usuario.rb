class AddForeignToUsuarioAndRolUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :rol_usuario_id, :integer
    add_foreign_key :usuarios, :rol_usuarios, column: :rol_usuario_id, primary_key: :id

    add_column :rol_usuarios, :rol_id, :integer
    add_foreign_key :rol_usuarios, :roles, column: :rol_id, primary_key: :id


  end
end
