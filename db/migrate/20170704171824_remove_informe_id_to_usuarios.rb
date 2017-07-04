class RemoveInformeIdToUsuarios < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :informe_id
  end
end
