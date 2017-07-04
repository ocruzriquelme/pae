class RemoveRespuestToInforme < ActiveRecord::Migration[5.0]
  def change
    remove_column :informes, :respuesta_id
  end
end
