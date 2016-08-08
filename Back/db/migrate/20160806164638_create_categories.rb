class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :nombre
      t.string :description
      t.boolean :activo
      t.belongs_to :service, foreign_key: true

      t.timestamps
    end
  end
end
