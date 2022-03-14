class CreateFavouriteBook < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_books do |t|
      t.references :book
      t.references :user
    end
  end
end
