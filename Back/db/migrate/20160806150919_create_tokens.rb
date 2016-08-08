class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :token
      t.integer :number_requests
      t.string :name

      t.timestamps
    end
  end
end
