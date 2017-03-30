class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :book, foreign_key: true
      t.datetime :transaction_date
      t.string :transaction_type
      t.string :date_issue_return

      t.timestamps
    end
  end
end
