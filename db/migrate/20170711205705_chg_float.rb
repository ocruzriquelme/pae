class ChgFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :asignatura_cursadas, :nota, :float
  end
end
