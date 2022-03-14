class DashboardController < ApplicationController

  def dashboard
    @books = Book.joins(:favourite_books).where("favourite_books.user_id = ?",current_user.id)
  end

  def add_to_favourite
    if current_user.present? && params[:book_id].present?
      @favourite = FavouriteBook.find_or_create_by(book_id: params[:book_id], user_id: current_user.id)
      set_book_and_count
    end
    respond_to do |format|
      format.js { render layout: false }
    end
  end

  def remove_from_favourite
    if current_user.present?  && params[:book_id].present?
      @favourite = FavouriteBook.where(book_id: params[:book_id], user_id: current_user.id).last
      @favourite.destroy
      set_book_and_count
    end
    respond_to do |format|
      format.js { render layout: false }
    end
  end

  private

  def set_book_and_count
    @fav_books = current_user.favourite_books.count
    @book = Book.find_by(id:  params[:book_id])
  end

end
