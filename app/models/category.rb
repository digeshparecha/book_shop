# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :books

  validates_presence_of :name
  
  before_save :add_slug

  def add_slug
    if self.name.present?
      self.slug = self.name.parameterize
    end
  end
end
