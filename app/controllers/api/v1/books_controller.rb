class Api::V1::BooksController < ApplicationController
  def index
    books = Book.order(updated_at: :asc).page(params[:page])
    render json: { code: 200, status: :success, data: books.to_a }
  end

  def show
    book = Book.find(params[:id]).attributes rescue {}
    render json: { code: 200, status: :success, data: book }
  end
end