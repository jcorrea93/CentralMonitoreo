class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :nombre
      t.string :description
      t.boolean :activo

      t.timestamps
    end
  end
end
