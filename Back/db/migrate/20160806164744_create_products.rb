class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :description
      t.integer :price
      t.integer :cant
      t.boolean :activo
      t.belongs_to :make, foreign_key: true

      t.timestamps
    end
  end
end
