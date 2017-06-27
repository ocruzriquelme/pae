class RemoveColumnPriorizacion < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes , :priorizacion

  end
end
