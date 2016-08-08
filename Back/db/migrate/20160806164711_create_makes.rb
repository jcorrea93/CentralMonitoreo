class CreateMakes < ActiveRecord::Migration[5.0]
  def change
    create_table :makes do |t|
      t.string :nombre
      t.string :description
      t.boolean :activo
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
