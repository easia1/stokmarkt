class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :ticker
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
