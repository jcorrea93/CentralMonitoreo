class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.boolean :active
      t.string :email
      t.text :bio
      t.date :birth_date
      t.integer :estrato

      t.timestamps
    end
  end
end
