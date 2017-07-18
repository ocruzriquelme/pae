class AddColumnToInforme < ActiveRecord::Migration[5.0]
  def change

    add_column :informes , :nombre, :string

  end
end
