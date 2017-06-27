class CreatePriorizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :priorizaciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
