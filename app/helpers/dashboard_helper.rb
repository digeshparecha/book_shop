module DashboardHelper

  def favourite_books_count
    "Favourite Books (#{current_user.favourite_books.count})"
  end
  
end