class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :transaction, :transaction_type
  end
end
