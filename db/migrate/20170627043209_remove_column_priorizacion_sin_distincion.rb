class RemoveColumnPriorizacionSinDistincion < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes , :priorizacion_sin_distincion
  end
end
