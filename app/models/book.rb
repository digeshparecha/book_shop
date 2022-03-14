# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  author_name :string
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_books_on_category_id  (category_id)
#
class Book < ApplicationRecord
  
  belongs_to :category
  has_many :favourite_books
  validates_presence_of :author_name, :description, :title, :category_id

end
