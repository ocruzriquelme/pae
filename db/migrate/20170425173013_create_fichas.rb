class CreateFichas < ActiveRecord::Migration[5.0]
  def change
    create_table :fichas do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
