class RemoveInformeToCarrera < ActiveRecord::Migration[5.0]
  def change
    remove_column :estudiantes , :informe_id
  end
end
