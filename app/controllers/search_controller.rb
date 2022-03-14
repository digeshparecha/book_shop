class SearchController < ApplicationController
  skip_before_action :authenticate_user!

  def search
    if params[:q].present?
      @books =  Book.where("author_name ILIKE :term OR description ILIKE :term OR title ILIKE :term ", term: "%#{params[:q]}%")
      @books = @books.where(category_id: params[:category_id]) if params[:category_id].present?
    elsif params[:category_id].present?
      @books =  Book.where(category_id: params[:category_id])
    else
      @books =  Book.all
    end
    @fav_books = @books.joins(:favourite_books).where("favourite_books.user_id = ?", current_user.id) if current_user.present?
  end
  
end
