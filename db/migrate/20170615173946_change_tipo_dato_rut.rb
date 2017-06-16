class ChangeTipoDatoRut < ActiveRecord::Migration[5.0]
  def change
    change_column :estudiantes ,:rut , :string
  end
end
