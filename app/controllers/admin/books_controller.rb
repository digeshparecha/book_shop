class Admin::BooksController < ApplicationController
  layout "admin"
  load_and_authorize_resource param_method: :book_params
  before_action :set_book, only: %i[ show edit update destroy ]
 
  def index
    @books = Book.all
  end

  def show; end

  def new
    @book = Book.new
  end

  def edit; end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to admin_books_path, notice: "Book was successfully created." 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @book.update(book_params)
     redirect_to admin_books_path, notice: "Book was successfully updated." 
    else
     render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @book.destroy
    redirect_to admin_books_path, notice: "Book was successfully destroyed." 
  end

  def report
    @books = Book.joins(:favourite_books).includes(:favourite_books)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :description, :author_name, :category_id)
    end
end
