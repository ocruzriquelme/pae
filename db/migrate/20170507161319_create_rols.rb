class CreateRols < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :nombres

      t.timestamps
    end
  end
end
