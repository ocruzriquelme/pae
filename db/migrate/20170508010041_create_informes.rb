class CreateInformes < ActiveRecord::Migration[5.0]
  def change
    create_table :informes do |t|
      t.integer :estado
      t.integer :fecha
      t.string :tutor

      t.timestamps
    end
  end
end
