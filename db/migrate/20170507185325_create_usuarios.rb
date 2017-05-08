class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.integer :rut
      t.integer :email
      t.string :nombres
      t.string :apellidos
      t.integer :password

      t.timestamps
    end
  end
end
