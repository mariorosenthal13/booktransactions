class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_author
      t.string :isbn
      t.integer :number_of_books
      t.datetime :publish_date
      t.string :category
      t.integer :books_issued

      t.timestamps
    end
  end
end
