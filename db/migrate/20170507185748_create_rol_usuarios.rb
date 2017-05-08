class CreateRolUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :rol_usuarios do |t|

      t.timestamps
    end
  end
end
