require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url, as: :json
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { book_author: @book.book_author, book_name: @book.book_name, books_issued: @book.books_issued, category: @book.category, isbn: @book.isbn, number_of_books: @book.number_of_books, publish_date: @book.publish_date } }, as: :json
    end

    assert_response 201
  end

  test "should show book" do
    get book_url(@book), as: :json
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { book_author: @book.book_author, book_name: @book.book_name, books_issued: @book.books_issued, category: @book.category, isbn: @book.isbn, number_of_books: @book.number_of_books, publish_date: @book.publish_date } }, as: :json
    assert_response 200
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book), as: :json
    end

    assert_response 204
  end
end
