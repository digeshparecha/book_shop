# == Schema Information
#
# Table name: favourite_books
#
#  id      :bigint           not null, primary key
#  book_id :bigint
#  user_id :bigint
#
# Indexes
#
#  index_favourite_books_on_book_id  (book_id)
#  index_favourite_books_on_user_id  (user_id)
#
class FavouriteBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
